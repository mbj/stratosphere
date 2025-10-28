module Stratosphere.WAFRegional.SqlInjectionMatchSet (
        module Exports, SqlInjectionMatchSet(..), mkSqlInjectionMatchSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFRegional.SqlInjectionMatchSet.SqlInjectionMatchTupleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SqlInjectionMatchSet
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-sqlinjectionmatchset.html>
    SqlInjectionMatchSet {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-sqlinjectionmatchset.html#cfn-wafregional-sqlinjectionmatchset-name>
                          name :: (Value Prelude.Text),
                          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-sqlinjectionmatchset.html#cfn-wafregional-sqlinjectionmatchset-sqlinjectionmatchtuples>
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
        {awsType = "AWS::WAFRegional::SqlInjectionMatchSet",
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