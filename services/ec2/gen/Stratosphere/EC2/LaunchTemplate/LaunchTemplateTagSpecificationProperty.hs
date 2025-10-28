module Stratosphere.EC2.LaunchTemplate.LaunchTemplateTagSpecificationProperty (
        LaunchTemplateTagSpecificationProperty(..),
        mkLaunchTemplateTagSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LaunchTemplateTagSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatetagspecification.html>
    LaunchTemplateTagSpecificationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatetagspecification.html#cfn-ec2-launchtemplate-launchtemplatetagspecification-resourcetype>
                                            resourceType :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatetagspecification.html#cfn-ec2-launchtemplate-launchtemplatetagspecification-tags>
                                            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLaunchTemplateTagSpecificationProperty ::
  LaunchTemplateTagSpecificationProperty
mkLaunchTemplateTagSpecificationProperty
  = LaunchTemplateTagSpecificationProperty
      {haddock_workaround_ = (), resourceType = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties LaunchTemplateTagSpecificationProperty where
  toResourceProperties LaunchTemplateTagSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.LaunchTemplateTagSpecification",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ResourceType" Prelude.<$> resourceType,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON LaunchTemplateTagSpecificationProperty where
  toJSON LaunchTemplateTagSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ResourceType" Prelude.<$> resourceType,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "ResourceType" LaunchTemplateTagSpecificationProperty where
  type PropertyType "ResourceType" LaunchTemplateTagSpecificationProperty = Value Prelude.Text
  set newValue LaunchTemplateTagSpecificationProperty {..}
    = LaunchTemplateTagSpecificationProperty
        {resourceType = Prelude.pure newValue, ..}
instance Property "Tags" LaunchTemplateTagSpecificationProperty where
  type PropertyType "Tags" LaunchTemplateTagSpecificationProperty = [Tag]
  set newValue LaunchTemplateTagSpecificationProperty {..}
    = LaunchTemplateTagSpecificationProperty
        {tags = Prelude.pure newValue, ..}