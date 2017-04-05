class Report < ActiveModel::Base
  def all
    @reports = execute %{
      SELECT
        relname               AS name,
        obj_description(oid)  AS description
      FROM
        pg_class
      WHERE
        relnamespace = (
          SELECT
            oid
          FROM
            pg_namespace
          WHERE
            nspname = 'reporting') AND
            relkind = 'v'
    }
  end
end
