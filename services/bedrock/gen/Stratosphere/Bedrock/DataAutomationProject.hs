module Stratosphere.Bedrock.DataAutomationProject (
        module Exports, DataAutomationProject(..), mkDataAutomationProject
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.CustomOutputConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.OverrideConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataAutomationProject.StandardOutputConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DataAutomationProject
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-dataautomationproject.html>
    DataAutomationProject {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-dataautomationproject.html#cfn-bedrock-dataautomationproject-customoutputconfiguration>
                           customOutputConfiguration :: (Prelude.Maybe CustomOutputConfigurationProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-dataautomationproject.html#cfn-bedrock-dataautomationproject-kmsencryptioncontext>
                           kmsEncryptionContext :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-dataautomationproject.html#cfn-bedrock-dataautomationproject-kmskeyid>
                           kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-dataautomationproject.html#cfn-bedrock-dataautomationproject-overrideconfiguration>
                           overrideConfiguration :: (Prelude.Maybe OverrideConfigurationProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-dataautomationproject.html#cfn-bedrock-dataautomationproject-projectdescription>
                           projectDescription :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-dataautomationproject.html#cfn-bedrock-dataautomationproject-projectname>
                           projectName :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-dataautomationproject.html#cfn-bedrock-dataautomationproject-standardoutputconfiguration>
                           standardOutputConfiguration :: (Prelude.Maybe StandardOutputConfigurationProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-dataautomationproject.html#cfn-bedrock-dataautomationproject-tags>
                           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataAutomationProject ::
  Value Prelude.Text -> DataAutomationProject
mkDataAutomationProject projectName
  = DataAutomationProject
      {haddock_workaround_ = (), projectName = projectName,
       customOutputConfiguration = Prelude.Nothing,
       kmsEncryptionContext = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       overrideConfiguration = Prelude.Nothing,
       projectDescription = Prelude.Nothing,
       standardOutputConfiguration = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties DataAutomationProject where
  toResourceProperties DataAutomationProject {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ProjectName" JSON..= projectName]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomOutputConfiguration"
                                 Prelude.<$> customOutputConfiguration,
                               (JSON..=) "KmsEncryptionContext" Prelude.<$> kmsEncryptionContext,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "OverrideConfiguration"
                                 Prelude.<$> overrideConfiguration,
                               (JSON..=) "ProjectDescription" Prelude.<$> projectDescription,
                               (JSON..=) "StandardOutputConfiguration"
                                 Prelude.<$> standardOutputConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DataAutomationProject where
  toJSON DataAutomationProject {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ProjectName" JSON..= projectName]
              (Prelude.catMaybes
                 [(JSON..=) "CustomOutputConfiguration"
                    Prelude.<$> customOutputConfiguration,
                  (JSON..=) "KmsEncryptionContext" Prelude.<$> kmsEncryptionContext,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "OverrideConfiguration"
                    Prelude.<$> overrideConfiguration,
                  (JSON..=) "ProjectDescription" Prelude.<$> projectDescription,
                  (JSON..=) "StandardOutputConfiguration"
                    Prelude.<$> standardOutputConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CustomOutputConfiguration" DataAutomationProject where
  type PropertyType "CustomOutputConfiguration" DataAutomationProject = CustomOutputConfigurationProperty
  set newValue DataAutomationProject {..}
    = DataAutomationProject
        {customOutputConfiguration = Prelude.pure newValue, ..}
instance Property "KmsEncryptionContext" DataAutomationProject where
  type PropertyType "KmsEncryptionContext" DataAutomationProject = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue DataAutomationProject {..}
    = DataAutomationProject
        {kmsEncryptionContext = Prelude.pure newValue, ..}
instance Property "KmsKeyId" DataAutomationProject where
  type PropertyType "KmsKeyId" DataAutomationProject = Value Prelude.Text
  set newValue DataAutomationProject {..}
    = DataAutomationProject {kmsKeyId = Prelude.pure newValue, ..}
instance Property "OverrideConfiguration" DataAutomationProject where
  type PropertyType "OverrideConfiguration" DataAutomationProject = OverrideConfigurationProperty
  set newValue DataAutomationProject {..}
    = DataAutomationProject
        {overrideConfiguration = Prelude.pure newValue, ..}
instance Property "ProjectDescription" DataAutomationProject where
  type PropertyType "ProjectDescription" DataAutomationProject = Value Prelude.Text
  set newValue DataAutomationProject {..}
    = DataAutomationProject
        {projectDescription = Prelude.pure newValue, ..}
instance Property "ProjectName" DataAutomationProject where
  type PropertyType "ProjectName" DataAutomationProject = Value Prelude.Text
  set newValue DataAutomationProject {..}
    = DataAutomationProject {projectName = newValue, ..}
instance Property "StandardOutputConfiguration" DataAutomationProject where
  type PropertyType "StandardOutputConfiguration" DataAutomationProject = StandardOutputConfigurationProperty
  set newValue DataAutomationProject {..}
    = DataAutomationProject
        {standardOutputConfiguration = Prelude.pure newValue, ..}
instance Property "Tags" DataAutomationProject where
  type PropertyType "Tags" DataAutomationProject = [Tag]
  set newValue DataAutomationProject {..}
    = DataAutomationProject {tags = Prelude.pure newValue, ..}