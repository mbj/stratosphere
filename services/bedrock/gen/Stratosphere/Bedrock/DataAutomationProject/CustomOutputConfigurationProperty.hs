module Stratosphere.Bedrock.DataAutomationProject.CustomOutputConfigurationProperty (
        module Exports, CustomOutputConfigurationProperty(..),
        mkCustomOutputConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.BlueprintItemProperty as Exports
import Stratosphere.ResourceProperties
data CustomOutputConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-customoutputconfiguration.html>
    CustomOutputConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-customoutputconfiguration.html#cfn-bedrock-dataautomationproject-customoutputconfiguration-blueprints>
                                       blueprints :: (Prelude.Maybe [BlueprintItemProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomOutputConfigurationProperty ::
  CustomOutputConfigurationProperty
mkCustomOutputConfigurationProperty
  = CustomOutputConfigurationProperty
      {haddock_workaround_ = (), blueprints = Prelude.Nothing}
instance ToResourceProperties CustomOutputConfigurationProperty where
  toResourceProperties CustomOutputConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.CustomOutputConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Blueprints" Prelude.<$> blueprints])}
instance JSON.ToJSON CustomOutputConfigurationProperty where
  toJSON CustomOutputConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Blueprints" Prelude.<$> blueprints]))
instance Property "Blueprints" CustomOutputConfigurationProperty where
  type PropertyType "Blueprints" CustomOutputConfigurationProperty = [BlueprintItemProperty]
  set newValue CustomOutputConfigurationProperty {..}
    = CustomOutputConfigurationProperty
        {blueprints = Prelude.pure newValue, ..}