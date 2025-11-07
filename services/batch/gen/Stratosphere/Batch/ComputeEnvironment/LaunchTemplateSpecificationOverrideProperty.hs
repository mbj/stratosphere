module Stratosphere.Batch.ComputeEnvironment.LaunchTemplateSpecificationOverrideProperty (
        LaunchTemplateSpecificationOverrideProperty(..),
        mkLaunchTemplateSpecificationOverrideProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LaunchTemplateSpecificationOverrideProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-launchtemplatespecificationoverride.html>
    LaunchTemplateSpecificationOverrideProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-launchtemplatespecificationoverride.html#cfn-batch-computeenvironment-launchtemplatespecificationoverride-launchtemplateid>
                                                 launchTemplateId :: (Prelude.Maybe (Value Prelude.Text)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-launchtemplatespecificationoverride.html#cfn-batch-computeenvironment-launchtemplatespecificationoverride-launchtemplatename>
                                                 launchTemplateName :: (Prelude.Maybe (Value Prelude.Text)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-launchtemplatespecificationoverride.html#cfn-batch-computeenvironment-launchtemplatespecificationoverride-targetinstancetypes>
                                                 targetInstanceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-launchtemplatespecificationoverride.html#cfn-batch-computeenvironment-launchtemplatespecificationoverride-userdatatype>
                                                 userdataType :: (Prelude.Maybe (Value Prelude.Text)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-launchtemplatespecificationoverride.html#cfn-batch-computeenvironment-launchtemplatespecificationoverride-version>
                                                 version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLaunchTemplateSpecificationOverrideProperty ::
  LaunchTemplateSpecificationOverrideProperty
mkLaunchTemplateSpecificationOverrideProperty
  = LaunchTemplateSpecificationOverrideProperty
      {haddock_workaround_ = (), launchTemplateId = Prelude.Nothing,
       launchTemplateName = Prelude.Nothing,
       targetInstanceTypes = Prelude.Nothing,
       userdataType = Prelude.Nothing, version = Prelude.Nothing}
instance ToResourceProperties LaunchTemplateSpecificationOverrideProperty where
  toResourceProperties
    LaunchTemplateSpecificationOverrideProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::ComputeEnvironment.LaunchTemplateSpecificationOverride",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LaunchTemplateId" Prelude.<$> launchTemplateId,
                            (JSON..=) "LaunchTemplateName" Prelude.<$> launchTemplateName,
                            (JSON..=) "TargetInstanceTypes" Prelude.<$> targetInstanceTypes,
                            (JSON..=) "UserdataType" Prelude.<$> userdataType,
                            (JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON LaunchTemplateSpecificationOverrideProperty where
  toJSON LaunchTemplateSpecificationOverrideProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LaunchTemplateId" Prelude.<$> launchTemplateId,
               (JSON..=) "LaunchTemplateName" Prelude.<$> launchTemplateName,
               (JSON..=) "TargetInstanceTypes" Prelude.<$> targetInstanceTypes,
               (JSON..=) "UserdataType" Prelude.<$> userdataType,
               (JSON..=) "Version" Prelude.<$> version]))
instance Property "LaunchTemplateId" LaunchTemplateSpecificationOverrideProperty where
  type PropertyType "LaunchTemplateId" LaunchTemplateSpecificationOverrideProperty = Value Prelude.Text
  set newValue LaunchTemplateSpecificationOverrideProperty {..}
    = LaunchTemplateSpecificationOverrideProperty
        {launchTemplateId = Prelude.pure newValue, ..}
instance Property "LaunchTemplateName" LaunchTemplateSpecificationOverrideProperty where
  type PropertyType "LaunchTemplateName" LaunchTemplateSpecificationOverrideProperty = Value Prelude.Text
  set newValue LaunchTemplateSpecificationOverrideProperty {..}
    = LaunchTemplateSpecificationOverrideProperty
        {launchTemplateName = Prelude.pure newValue, ..}
instance Property "TargetInstanceTypes" LaunchTemplateSpecificationOverrideProperty where
  type PropertyType "TargetInstanceTypes" LaunchTemplateSpecificationOverrideProperty = ValueList Prelude.Text
  set newValue LaunchTemplateSpecificationOverrideProperty {..}
    = LaunchTemplateSpecificationOverrideProperty
        {targetInstanceTypes = Prelude.pure newValue, ..}
instance Property "UserdataType" LaunchTemplateSpecificationOverrideProperty where
  type PropertyType "UserdataType" LaunchTemplateSpecificationOverrideProperty = Value Prelude.Text
  set newValue LaunchTemplateSpecificationOverrideProperty {..}
    = LaunchTemplateSpecificationOverrideProperty
        {userdataType = Prelude.pure newValue, ..}
instance Property "Version" LaunchTemplateSpecificationOverrideProperty where
  type PropertyType "Version" LaunchTemplateSpecificationOverrideProperty = Value Prelude.Text
  set newValue LaunchTemplateSpecificationOverrideProperty {..}
    = LaunchTemplateSpecificationOverrideProperty
        {version = Prelude.pure newValue, ..}