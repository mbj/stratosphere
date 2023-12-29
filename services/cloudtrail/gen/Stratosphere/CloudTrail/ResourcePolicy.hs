module Stratosphere.CloudTrail.ResourcePolicy (
        ResourcePolicy(..), mkResourcePolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourcePolicy
  = ResourcePolicy {resourceArn :: (Value Prelude.Text),
                    resourcePolicy :: JSON.Object}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourcePolicy ::
  Value Prelude.Text -> JSON.Object -> ResourcePolicy
mkResourcePolicy resourceArn resourcePolicy
  = ResourcePolicy
      {resourceArn = resourceArn, resourcePolicy = resourcePolicy}
instance ToResourceProperties ResourcePolicy where
  toResourceProperties ResourcePolicy {..}
    = ResourceProperties
        {awsType = "AWS::CloudTrail::ResourcePolicy",
         supportsTags = Prelude.False,
         properties = ["ResourceArn" JSON..= resourceArn,
                       "ResourcePolicy" JSON..= resourcePolicy]}
instance JSON.ToJSON ResourcePolicy where
  toJSON ResourcePolicy {..}
    = JSON.object
        ["ResourceArn" JSON..= resourceArn,
         "ResourcePolicy" JSON..= resourcePolicy]
instance Property "ResourceArn" ResourcePolicy where
  type PropertyType "ResourceArn" ResourcePolicy = Value Prelude.Text
  set newValue ResourcePolicy {..}
    = ResourcePolicy {resourceArn = newValue, ..}
instance Property "ResourcePolicy" ResourcePolicy where
  type PropertyType "ResourcePolicy" ResourcePolicy = JSON.Object
  set newValue ResourcePolicy {..}
    = ResourcePolicy {resourcePolicy = newValue, ..}