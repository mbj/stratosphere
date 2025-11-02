module Stratosphere.SES.ConfigurationSet.ReputationOptionsProperty (
        ReputationOptionsProperty(..), mkReputationOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReputationOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationset-reputationoptions.html>
    ReputationOptionsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationset-reputationoptions.html#cfn-ses-configurationset-reputationoptions-reputationmetricsenabled>
                               reputationMetricsEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReputationOptionsProperty :: ReputationOptionsProperty
mkReputationOptionsProperty
  = ReputationOptionsProperty
      {haddock_workaround_ = (),
       reputationMetricsEnabled = Prelude.Nothing}
instance ToResourceProperties ReputationOptionsProperty where
  toResourceProperties ReputationOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ConfigurationSet.ReputationOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ReputationMetricsEnabled"
                              Prelude.<$> reputationMetricsEnabled])}
instance JSON.ToJSON ReputationOptionsProperty where
  toJSON ReputationOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ReputationMetricsEnabled"
                 Prelude.<$> reputationMetricsEnabled]))
instance Property "ReputationMetricsEnabled" ReputationOptionsProperty where
  type PropertyType "ReputationMetricsEnabled" ReputationOptionsProperty = Value Prelude.Bool
  set newValue ReputationOptionsProperty {..}
    = ReputationOptionsProperty
        {reputationMetricsEnabled = Prelude.pure newValue, ..}