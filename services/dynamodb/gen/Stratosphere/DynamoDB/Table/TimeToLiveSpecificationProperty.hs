module Stratosphere.DynamoDB.Table.TimeToLiveSpecificationProperty (
        TimeToLiveSpecificationProperty(..),
        mkTimeToLiveSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeToLiveSpecificationProperty
  = TimeToLiveSpecificationProperty {attributeName :: (Value Prelude.Text),
                                     enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeToLiveSpecificationProperty ::
  Value Prelude.Text
  -> Value Prelude.Bool -> TimeToLiveSpecificationProperty
mkTimeToLiveSpecificationProperty attributeName enabled
  = TimeToLiveSpecificationProperty
      {attributeName = attributeName, enabled = enabled}
instance ToResourceProperties TimeToLiveSpecificationProperty where
  toResourceProperties TimeToLiveSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::Table.TimeToLiveSpecification",
         supportsTags = Prelude.False,
         properties = ["AttributeName" JSON..= attributeName,
                       "Enabled" JSON..= enabled]}
instance JSON.ToJSON TimeToLiveSpecificationProperty where
  toJSON TimeToLiveSpecificationProperty {..}
    = JSON.object
        ["AttributeName" JSON..= attributeName, "Enabled" JSON..= enabled]
instance Property "AttributeName" TimeToLiveSpecificationProperty where
  type PropertyType "AttributeName" TimeToLiveSpecificationProperty = Value Prelude.Text
  set newValue TimeToLiveSpecificationProperty {..}
    = TimeToLiveSpecificationProperty {attributeName = newValue, ..}
instance Property "Enabled" TimeToLiveSpecificationProperty where
  type PropertyType "Enabled" TimeToLiveSpecificationProperty = Value Prelude.Bool
  set newValue TimeToLiveSpecificationProperty {..}
    = TimeToLiveSpecificationProperty {enabled = newValue, ..}