module Stratosphere.SES.ConfigurationSet.GuardianOptionsProperty (
        GuardianOptionsProperty(..), mkGuardianOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GuardianOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationset-guardianoptions.html>
    GuardianOptionsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationset-guardianoptions.html#cfn-ses-configurationset-guardianoptions-optimizedshareddelivery>
                             optimizedSharedDelivery :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGuardianOptionsProperty ::
  Value Prelude.Text -> GuardianOptionsProperty
mkGuardianOptionsProperty optimizedSharedDelivery
  = GuardianOptionsProperty
      {haddock_workaround_ = (),
       optimizedSharedDelivery = optimizedSharedDelivery}
instance ToResourceProperties GuardianOptionsProperty where
  toResourceProperties GuardianOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ConfigurationSet.GuardianOptions",
         supportsTags = Prelude.False,
         properties = ["OptimizedSharedDelivery"
                         JSON..= optimizedSharedDelivery]}
instance JSON.ToJSON GuardianOptionsProperty where
  toJSON GuardianOptionsProperty {..}
    = JSON.object
        ["OptimizedSharedDelivery" JSON..= optimizedSharedDelivery]
instance Property "OptimizedSharedDelivery" GuardianOptionsProperty where
  type PropertyType "OptimizedSharedDelivery" GuardianOptionsProperty = Value Prelude.Text
  set newValue GuardianOptionsProperty {..}
    = GuardianOptionsProperty {optimizedSharedDelivery = newValue, ..}