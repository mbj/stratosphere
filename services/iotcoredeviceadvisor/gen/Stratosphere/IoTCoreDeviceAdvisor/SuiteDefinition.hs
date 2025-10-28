module Stratosphere.IoTCoreDeviceAdvisor.SuiteDefinition (
        module Exports, SuiteDefinition(..), mkSuiteDefinition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTCoreDeviceAdvisor.SuiteDefinition.SuiteDefinitionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
data SuiteDefinition
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotcoredeviceadvisor-suitedefinition.html>
    SuiteDefinition {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotcoredeviceadvisor-suitedefinition.html#cfn-iotcoredeviceadvisor-suitedefinition-suitedefinitionconfiguration>
                     suiteDefinitionConfiguration :: SuiteDefinitionConfigurationProperty,
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotcoredeviceadvisor-suitedefinition.html#cfn-iotcoredeviceadvisor-suitedefinition-tags>
                     tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSuiteDefinition ::
  SuiteDefinitionConfigurationProperty -> SuiteDefinition
mkSuiteDefinition suiteDefinitionConfiguration
  = SuiteDefinition
      {haddock_workaround_ = (),
       suiteDefinitionConfiguration = suiteDefinitionConfiguration,
       tags = Prelude.Nothing}
instance ToResourceProperties SuiteDefinition where
  toResourceProperties SuiteDefinition {..}
    = ResourceProperties
        {awsType = "AWS::IoTCoreDeviceAdvisor::SuiteDefinition",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SuiteDefinitionConfiguration"
                              JSON..= suiteDefinitionConfiguration]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON SuiteDefinition where
  toJSON SuiteDefinition {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SuiteDefinitionConfiguration"
                 JSON..= suiteDefinitionConfiguration]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "SuiteDefinitionConfiguration" SuiteDefinition where
  type PropertyType "SuiteDefinitionConfiguration" SuiteDefinition = SuiteDefinitionConfigurationProperty
  set newValue SuiteDefinition {..}
    = SuiteDefinition {suiteDefinitionConfiguration = newValue, ..}
instance Property "Tags" SuiteDefinition where
  type PropertyType "Tags" SuiteDefinition = [Tag]
  set newValue SuiteDefinition {..}
    = SuiteDefinition {tags = Prelude.pure newValue, ..}