module Stratosphere.EC2.Instance.LaunchTemplateSpecificationProperty (
        LaunchTemplateSpecificationProperty(..),
        mkLaunchTemplateSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LaunchTemplateSpecificationProperty
  = LaunchTemplateSpecificationProperty {launchTemplateId :: (Prelude.Maybe (Value Prelude.Text)),
                                         launchTemplateName :: (Prelude.Maybe (Value Prelude.Text)),
                                         version :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLaunchTemplateSpecificationProperty ::
  Value Prelude.Text -> LaunchTemplateSpecificationProperty
mkLaunchTemplateSpecificationProperty version
  = LaunchTemplateSpecificationProperty
      {version = version, launchTemplateId = Prelude.Nothing,
       launchTemplateName = Prelude.Nothing}
instance ToResourceProperties LaunchTemplateSpecificationProperty where
  toResourceProperties LaunchTemplateSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::Instance.LaunchTemplateSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Version" JSON..= version]
                           (Prelude.catMaybes
                              [(JSON..=) "LaunchTemplateId" Prelude.<$> launchTemplateId,
                               (JSON..=) "LaunchTemplateName" Prelude.<$> launchTemplateName]))}
instance JSON.ToJSON LaunchTemplateSpecificationProperty where
  toJSON LaunchTemplateSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Version" JSON..= version]
              (Prelude.catMaybes
                 [(JSON..=) "LaunchTemplateId" Prelude.<$> launchTemplateId,
                  (JSON..=) "LaunchTemplateName" Prelude.<$> launchTemplateName])))
instance Property "LaunchTemplateId" LaunchTemplateSpecificationProperty where
  type PropertyType "LaunchTemplateId" LaunchTemplateSpecificationProperty = Value Prelude.Text
  set newValue LaunchTemplateSpecificationProperty {..}
    = LaunchTemplateSpecificationProperty
        {launchTemplateId = Prelude.pure newValue, ..}
instance Property "LaunchTemplateName" LaunchTemplateSpecificationProperty where
  type PropertyType "LaunchTemplateName" LaunchTemplateSpecificationProperty = Value Prelude.Text
  set newValue LaunchTemplateSpecificationProperty {..}
    = LaunchTemplateSpecificationProperty
        {launchTemplateName = Prelude.pure newValue, ..}
instance Property "Version" LaunchTemplateSpecificationProperty where
  type PropertyType "Version" LaunchTemplateSpecificationProperty = Value Prelude.Text
  set newValue LaunchTemplateSpecificationProperty {..}
    = LaunchTemplateSpecificationProperty {version = newValue, ..}