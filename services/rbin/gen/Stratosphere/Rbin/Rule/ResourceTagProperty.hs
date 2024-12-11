module Stratosphere.Rbin.Rule.ResourceTagProperty (
        ResourceTagProperty(..), mkResourceTagProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceTagProperty
  = ResourceTagProperty {resourceTagKey :: (Value Prelude.Text),
                         resourceTagValue :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceTagProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ResourceTagProperty
mkResourceTagProperty resourceTagKey resourceTagValue
  = ResourceTagProperty
      {resourceTagKey = resourceTagKey,
       resourceTagValue = resourceTagValue}
instance ToResourceProperties ResourceTagProperty where
  toResourceProperties ResourceTagProperty {..}
    = ResourceProperties
        {awsType = "AWS::Rbin::Rule.ResourceTag",
         supportsTags = Prelude.False,
         properties = ["ResourceTagKey" JSON..= resourceTagKey,
                       "ResourceTagValue" JSON..= resourceTagValue]}
instance JSON.ToJSON ResourceTagProperty where
  toJSON ResourceTagProperty {..}
    = JSON.object
        ["ResourceTagKey" JSON..= resourceTagKey,
         "ResourceTagValue" JSON..= resourceTagValue]
instance Property "ResourceTagKey" ResourceTagProperty where
  type PropertyType "ResourceTagKey" ResourceTagProperty = Value Prelude.Text
  set newValue ResourceTagProperty {..}
    = ResourceTagProperty {resourceTagKey = newValue, ..}
instance Property "ResourceTagValue" ResourceTagProperty where
  type PropertyType "ResourceTagValue" ResourceTagProperty = Value Prelude.Text
  set newValue ResourceTagProperty {..}
    = ResourceTagProperty {resourceTagValue = newValue, ..}