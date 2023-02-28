module Stratosphere.DynamoDB.GlobalTable.TimeToLiveSpecificationProperty (
        TimeToLiveSpecificationProperty(..),
        mkTimeToLiveSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeToLiveSpecificationProperty
  = TimeToLiveSpecificationProperty {attributeName :: (Prelude.Maybe (Value Prelude.Text)),
                                     enabled :: (Value Prelude.Bool)}
mkTimeToLiveSpecificationProperty ::
  Value Prelude.Bool -> TimeToLiveSpecificationProperty
mkTimeToLiveSpecificationProperty enabled
  = TimeToLiveSpecificationProperty
      {enabled = enabled, attributeName = Prelude.Nothing}
instance ToResourceProperties TimeToLiveSpecificationProperty where
  toResourceProperties TimeToLiveSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable.TimeToLiveSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "AttributeName" Prelude.<$> attributeName]))}
instance JSON.ToJSON TimeToLiveSpecificationProperty where
  toJSON TimeToLiveSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "AttributeName" Prelude.<$> attributeName])))
instance Property "AttributeName" TimeToLiveSpecificationProperty where
  type PropertyType "AttributeName" TimeToLiveSpecificationProperty = Value Prelude.Text
  set newValue TimeToLiveSpecificationProperty {..}
    = TimeToLiveSpecificationProperty
        {attributeName = Prelude.pure newValue, ..}
instance Property "Enabled" TimeToLiveSpecificationProperty where
  type PropertyType "Enabled" TimeToLiveSpecificationProperty = Value Prelude.Bool
  set newValue TimeToLiveSpecificationProperty {..}
    = TimeToLiveSpecificationProperty {enabled = newValue, ..}