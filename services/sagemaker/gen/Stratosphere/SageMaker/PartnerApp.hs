module Stratosphere.SageMaker.PartnerApp (
        module Exports, PartnerApp(..), mkPartnerApp
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.PartnerApp.PartnerAppConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.PartnerApp.PartnerAppMaintenanceConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PartnerApp
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-partnerapp.html>
    PartnerApp {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-partnerapp.html#cfn-sagemaker-partnerapp-applicationconfig>
                applicationConfig :: (Prelude.Maybe PartnerAppConfigProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-partnerapp.html#cfn-sagemaker-partnerapp-authtype>
                authType :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-partnerapp.html#cfn-sagemaker-partnerapp-enableiamsessionbasedidentity>
                enableIamSessionBasedIdentity :: (Prelude.Maybe (Value Prelude.Bool)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-partnerapp.html#cfn-sagemaker-partnerapp-executionrolearn>
                executionRoleArn :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-partnerapp.html#cfn-sagemaker-partnerapp-kmskeyid>
                kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-partnerapp.html#cfn-sagemaker-partnerapp-maintenanceconfig>
                maintenanceConfig :: (Prelude.Maybe PartnerAppMaintenanceConfigProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-partnerapp.html#cfn-sagemaker-partnerapp-name>
                name :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-partnerapp.html#cfn-sagemaker-partnerapp-tags>
                tags :: (Prelude.Maybe [Tag]),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-partnerapp.html#cfn-sagemaker-partnerapp-tier>
                tier :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-partnerapp.html#cfn-sagemaker-partnerapp-type>
                type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPartnerApp ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> Value Prelude.Text -> PartnerApp
mkPartnerApp authType executionRoleArn name tier type'
  = PartnerApp
      {haddock_workaround_ = (), authType = authType,
       executionRoleArn = executionRoleArn, name = name, tier = tier,
       type' = type', applicationConfig = Prelude.Nothing,
       enableIamSessionBasedIdentity = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing, maintenanceConfig = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties PartnerApp where
  toResourceProperties PartnerApp {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::PartnerApp",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AuthType" JSON..= authType,
                            "ExecutionRoleArn" JSON..= executionRoleArn, "Name" JSON..= name,
                            "Tier" JSON..= tier, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "ApplicationConfig" Prelude.<$> applicationConfig,
                               (JSON..=) "EnableIamSessionBasedIdentity"
                                 Prelude.<$> enableIamSessionBasedIdentity,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "MaintenanceConfig" Prelude.<$> maintenanceConfig,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON PartnerApp where
  toJSON PartnerApp {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AuthType" JSON..= authType,
               "ExecutionRoleArn" JSON..= executionRoleArn, "Name" JSON..= name,
               "Tier" JSON..= tier, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "ApplicationConfig" Prelude.<$> applicationConfig,
                  (JSON..=) "EnableIamSessionBasedIdentity"
                    Prelude.<$> enableIamSessionBasedIdentity,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "MaintenanceConfig" Prelude.<$> maintenanceConfig,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ApplicationConfig" PartnerApp where
  type PropertyType "ApplicationConfig" PartnerApp = PartnerAppConfigProperty
  set newValue PartnerApp {..}
    = PartnerApp {applicationConfig = Prelude.pure newValue, ..}
instance Property "AuthType" PartnerApp where
  type PropertyType "AuthType" PartnerApp = Value Prelude.Text
  set newValue PartnerApp {..} = PartnerApp {authType = newValue, ..}
instance Property "EnableIamSessionBasedIdentity" PartnerApp where
  type PropertyType "EnableIamSessionBasedIdentity" PartnerApp = Value Prelude.Bool
  set newValue PartnerApp {..}
    = PartnerApp
        {enableIamSessionBasedIdentity = Prelude.pure newValue, ..}
instance Property "ExecutionRoleArn" PartnerApp where
  type PropertyType "ExecutionRoleArn" PartnerApp = Value Prelude.Text
  set newValue PartnerApp {..}
    = PartnerApp {executionRoleArn = newValue, ..}
instance Property "KmsKeyId" PartnerApp where
  type PropertyType "KmsKeyId" PartnerApp = Value Prelude.Text
  set newValue PartnerApp {..}
    = PartnerApp {kmsKeyId = Prelude.pure newValue, ..}
instance Property "MaintenanceConfig" PartnerApp where
  type PropertyType "MaintenanceConfig" PartnerApp = PartnerAppMaintenanceConfigProperty
  set newValue PartnerApp {..}
    = PartnerApp {maintenanceConfig = Prelude.pure newValue, ..}
instance Property "Name" PartnerApp where
  type PropertyType "Name" PartnerApp = Value Prelude.Text
  set newValue PartnerApp {..} = PartnerApp {name = newValue, ..}
instance Property "Tags" PartnerApp where
  type PropertyType "Tags" PartnerApp = [Tag]
  set newValue PartnerApp {..}
    = PartnerApp {tags = Prelude.pure newValue, ..}
instance Property "Tier" PartnerApp where
  type PropertyType "Tier" PartnerApp = Value Prelude.Text
  set newValue PartnerApp {..} = PartnerApp {tier = newValue, ..}
instance Property "Type" PartnerApp where
  type PropertyType "Type" PartnerApp = Value Prelude.Text
  set newValue PartnerApp {..} = PartnerApp {type' = newValue, ..}