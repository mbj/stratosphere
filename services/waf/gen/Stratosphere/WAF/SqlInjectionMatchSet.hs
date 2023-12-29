module Stratosphere.WAF.SqlInjectionMatchSet (
        module Exports, SqlInjectionMatchSet(..), mkSqlInjectionMatchSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAF.SqlInjectionMatchSet.SqlInjectionMatchTupleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SqlInjectionMatchSet
  = SqlInjectionMatchSet {name :: (Value Prelude.Text),
                          sqlInjectionMatchTuples :: (Prelude.Maybe [SqlInjectionMatchTupleProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSqlInjectionMatchSet ::
  Value Prelude.Text -> SqlInjectionMatchSet
mkSqlInjectionMatchSet name
  = SqlInjectionMatchSet
      {name = name, sqlInjectionMatchTuples = Prelude.Nothing}
instance ToResourceProperties SqlInjectionMatchSet where
  toResourceProperties SqlInjectionMatchSet {..}
    = ResourceProperties
        {awsType = "AWS::WAF::SqlInjectionMatchSet",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "SqlInjectionMatchTuples"
                                 Prelude.<$> sqlInjectionMatchTuples]))}
instance JSON.ToJSON SqlInjectionMatchSet where
  toJSON SqlInjectionMatchSet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "SqlInjectionMatchTuples"
                    Prelude.<$> sqlInjectionMatchTuples])))
instance Property "Name" SqlInjectionMatchSet where
  type PropertyType "Name" SqlInjectionMatchSet = Value Prelude.Text
  set newValue SqlInjectionMatchSet {..}
    = SqlInjectionMatchSet {name = newValue, ..}
instance Property "SqlInjectionMatchTuples" SqlInjectionMatchSet where
  type PropertyType "SqlInjectionMatchTuples" SqlInjectionMatchSet = [SqlInjectionMatchTupleProperty]
  set newValue SqlInjectionMatchSet {..}
    = SqlInjectionMatchSet
        {sqlInjectionMatchTuples = Prelude.pure newValue, ..}