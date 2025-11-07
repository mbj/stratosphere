module Stratosphere.PCS.ComputeNodeGroup.CustomLaunchTemplateProperty (
        CustomLaunchTemplateProperty(..), mkCustomLaunchTemplateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomLaunchTemplateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-computenodegroup-customlaunchtemplate.html>
    CustomLaunchTemplateProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-computenodegroup-customlaunchtemplate.html#cfn-pcs-computenodegroup-customlaunchtemplate-templateid>
                                  templateId :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-computenodegroup-customlaunchtemplate.html#cfn-pcs-computenodegroup-customlaunchtemplate-version>
                                  version :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomLaunchTemplateProperty ::
  Value Prelude.Text -> CustomLaunchTemplateProperty
mkCustomLaunchTemplateProperty version
  = CustomLaunchTemplateProperty
      {haddock_workaround_ = (), version = version,
       templateId = Prelude.Nothing}
instance ToResourceProperties CustomLaunchTemplateProperty where
  toResourceProperties CustomLaunchTemplateProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCS::ComputeNodeGroup.CustomLaunchTemplate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Version" JSON..= version]
                           (Prelude.catMaybes
                              [(JSON..=) "TemplateId" Prelude.<$> templateId]))}
instance JSON.ToJSON CustomLaunchTemplateProperty where
  toJSON CustomLaunchTemplateProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Version" JSON..= version]
              (Prelude.catMaybes
                 [(JSON..=) "TemplateId" Prelude.<$> templateId])))
instance Property "TemplateId" CustomLaunchTemplateProperty where
  type PropertyType "TemplateId" CustomLaunchTemplateProperty = Value Prelude.Text
  set newValue CustomLaunchTemplateProperty {..}
    = CustomLaunchTemplateProperty
        {templateId = Prelude.pure newValue, ..}
instance Property "Version" CustomLaunchTemplateProperty where
  type PropertyType "Version" CustomLaunchTemplateProperty = Value Prelude.Text
  set newValue CustomLaunchTemplateProperty {..}
    = CustomLaunchTemplateProperty {version = newValue, ..}