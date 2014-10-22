module ActiveRecord
  module ConnectionAdapters
    class TableDefinition
      def timestamps_with_null_false(*args)
        timestamps_without_null_false({:null => false}.merge(args.extract_options!))
      end
      alias_method_chain :timestamps, :null_false
    end
  end
end
