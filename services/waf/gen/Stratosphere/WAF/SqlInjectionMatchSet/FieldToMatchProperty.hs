module Stratosphere.WAF.SqlInjectionMatchSet.FieldToMatchProperty (
        FieldToMatchProperty(..), mkFieldToMatchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldToMatchProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples-fieldtomatch.html>
    FieldToMatchProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples-fieldtomatch.html#cfn-waf-sizeconstraintset-sizeconstraint-fieldtomatch-data>
                          data' :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples-fieldtomatch.html#cfn-waf-sizeconstraintset-sizeconstraint-fieldtomatch-type>
                          type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFieldToMatchProperty ::
  Value Prelude.Text -> FieldToMatchProperty
mkFieldToMatchProperty type'
  = FieldToMatchProperty
      {haddock_workaround_ = (), type' = type', data' = Prelude.Nothing}
instance ToResourceProperties FieldToMatchProperty where
  toResourceProperties FieldToMatchProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAF::SqlInjectionMatchSet.FieldToMatch",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes [(JSON..=) "Data" Prelude.<$> data']))}
instance JSON.ToJSON FieldToMatchProperty where
  toJSON FieldToMatchProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes [(JSON..=) "Data" Prelude.<$> data'])))
instance Property "Data" FieldToMatchProperty where
  type PropertyType "Data" FieldToMatchProperty = Value Prelude.Text
  set newValue FieldToMatchProperty {..}
    = FieldToMatchProperty {data' = Prelude.pure newValue, ..}
instance Property "Type" FieldToMatchProperty where
  type PropertyType "Type" FieldToMatchProperty = Value Prelude.Text
  set newValue FieldToMatchProperty {..}
    = FieldToMatchProperty {type' = newValue, ..}