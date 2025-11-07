module Stratosphere.SageMaker.PartnerApp.PartnerAppConfigProperty (
        PartnerAppConfigProperty(..), mkPartnerAppConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PartnerAppConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-partnerapp-partnerappconfig.html>
    PartnerAppConfigProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-partnerapp-partnerappconfig.html#cfn-sagemaker-partnerapp-partnerappconfig-adminusers>
                              adminUsers :: (Prelude.Maybe (ValueList Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-partnerapp-partnerappconfig.html#cfn-sagemaker-partnerapp-partnerappconfig-arguments>
                              arguments :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPartnerAppConfigProperty :: PartnerAppConfigProperty
mkPartnerAppConfigProperty
  = PartnerAppConfigProperty
      {haddock_workaround_ = (), adminUsers = Prelude.Nothing,
       arguments = Prelude.Nothing}
instance ToResourceProperties PartnerAppConfigProperty where
  toResourceProperties PartnerAppConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::PartnerApp.PartnerAppConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdminUsers" Prelude.<$> adminUsers,
                            (JSON..=) "Arguments" Prelude.<$> arguments])}
instance JSON.ToJSON PartnerAppConfigProperty where
  toJSON PartnerAppConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdminUsers" Prelude.<$> adminUsers,
               (JSON..=) "Arguments" Prelude.<$> arguments]))
instance Property "AdminUsers" PartnerAppConfigProperty where
  type PropertyType "AdminUsers" PartnerAppConfigProperty = ValueList Prelude.Text
  set newValue PartnerAppConfigProperty {..}
    = PartnerAppConfigProperty {adminUsers = Prelude.pure newValue, ..}
instance Property "Arguments" PartnerAppConfigProperty where
  type PropertyType "Arguments" PartnerAppConfigProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue PartnerAppConfigProperty {..}
    = PartnerAppConfigProperty {arguments = Prelude.pure newValue, ..}