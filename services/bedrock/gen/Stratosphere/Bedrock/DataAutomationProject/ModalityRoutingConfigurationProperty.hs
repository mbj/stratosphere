module Stratosphere.Bedrock.DataAutomationProject.ModalityRoutingConfigurationProperty (
        ModalityRoutingConfigurationProperty(..),
        mkModalityRoutingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModalityRoutingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-modalityroutingconfiguration.html>
    ModalityRoutingConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-modalityroutingconfiguration.html#cfn-bedrock-dataautomationproject-modalityroutingconfiguration-jpeg>
                                          jpeg :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-modalityroutingconfiguration.html#cfn-bedrock-dataautomationproject-modalityroutingconfiguration-mov>
                                          mov :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-modalityroutingconfiguration.html#cfn-bedrock-dataautomationproject-modalityroutingconfiguration-mp4>
                                          mp4 :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-modalityroutingconfiguration.html#cfn-bedrock-dataautomationproject-modalityroutingconfiguration-png>
                                          png :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModalityRoutingConfigurationProperty ::
  ModalityRoutingConfigurationProperty
mkModalityRoutingConfigurationProperty
  = ModalityRoutingConfigurationProperty
      {haddock_workaround_ = (), jpeg = Prelude.Nothing,
       mov = Prelude.Nothing, mp4 = Prelude.Nothing,
       png = Prelude.Nothing}
instance ToResourceProperties ModalityRoutingConfigurationProperty where
  toResourceProperties ModalityRoutingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.ModalityRoutingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "jpeg" Prelude.<$> jpeg,
                            (JSON..=) "mov" Prelude.<$> mov, (JSON..=) "mp4" Prelude.<$> mp4,
                            (JSON..=) "png" Prelude.<$> png])}
instance JSON.ToJSON ModalityRoutingConfigurationProperty where
  toJSON ModalityRoutingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "jpeg" Prelude.<$> jpeg,
               (JSON..=) "mov" Prelude.<$> mov, (JSON..=) "mp4" Prelude.<$> mp4,
               (JSON..=) "png" Prelude.<$> png]))
instance Property "jpeg" ModalityRoutingConfigurationProperty where
  type PropertyType "jpeg" ModalityRoutingConfigurationProperty = Value Prelude.Text
  set newValue ModalityRoutingConfigurationProperty {..}
    = ModalityRoutingConfigurationProperty
        {jpeg = Prelude.pure newValue, ..}
instance Property "mov" ModalityRoutingConfigurationProperty where
  type PropertyType "mov" ModalityRoutingConfigurationProperty = Value Prelude.Text
  set newValue ModalityRoutingConfigurationProperty {..}
    = ModalityRoutingConfigurationProperty
        {mov = Prelude.pure newValue, ..}
instance Property "mp4" ModalityRoutingConfigurationProperty where
  type PropertyType "mp4" ModalityRoutingConfigurationProperty = Value Prelude.Text
  set newValue ModalityRoutingConfigurationProperty {..}
    = ModalityRoutingConfigurationProperty
        {mp4 = Prelude.pure newValue, ..}
instance Property "png" ModalityRoutingConfigurationProperty where
  type PropertyType "png" ModalityRoutingConfigurationProperty = Value Prelude.Text
  set newValue ModalityRoutingConfigurationProperty {..}
    = ModalityRoutingConfigurationProperty
        {png = Prelude.pure newValue, ..}