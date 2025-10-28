module Stratosphere.Kendra.DataSource.ConfluenceConfigurationProperty (
        module Exports, ConfluenceConfigurationProperty(..),
        mkConfluenceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.ConfluenceAttachmentConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.ConfluenceBlogConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.ConfluencePageConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.ConfluenceSpaceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.DataSourceVpcConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfluenceConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceconfiguration.html>
    ConfluenceConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceconfiguration.html#cfn-kendra-datasource-confluenceconfiguration-attachmentconfiguration>
                                     attachmentConfiguration :: (Prelude.Maybe ConfluenceAttachmentConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceconfiguration.html#cfn-kendra-datasource-confluenceconfiguration-blogconfiguration>
                                     blogConfiguration :: (Prelude.Maybe ConfluenceBlogConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceconfiguration.html#cfn-kendra-datasource-confluenceconfiguration-exclusionpatterns>
                                     exclusionPatterns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceconfiguration.html#cfn-kendra-datasource-confluenceconfiguration-inclusionpatterns>
                                     inclusionPatterns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceconfiguration.html#cfn-kendra-datasource-confluenceconfiguration-pageconfiguration>
                                     pageConfiguration :: (Prelude.Maybe ConfluencePageConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceconfiguration.html#cfn-kendra-datasource-confluenceconfiguration-secretarn>
                                     secretArn :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceconfiguration.html#cfn-kendra-datasource-confluenceconfiguration-serverurl>
                                     serverUrl :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceconfiguration.html#cfn-kendra-datasource-confluenceconfiguration-spaceconfiguration>
                                     spaceConfiguration :: (Prelude.Maybe ConfluenceSpaceConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceconfiguration.html#cfn-kendra-datasource-confluenceconfiguration-version>
                                     version :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceconfiguration.html#cfn-kendra-datasource-confluenceconfiguration-vpcconfiguration>
                                     vpcConfiguration :: (Prelude.Maybe DataSourceVpcConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfluenceConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> ConfluenceConfigurationProperty
mkConfluenceConfigurationProperty secretArn serverUrl version
  = ConfluenceConfigurationProperty
      {haddock_workaround_ = (), secretArn = secretArn,
       serverUrl = serverUrl, version = version,
       attachmentConfiguration = Prelude.Nothing,
       blogConfiguration = Prelude.Nothing,
       exclusionPatterns = Prelude.Nothing,
       inclusionPatterns = Prelude.Nothing,
       pageConfiguration = Prelude.Nothing,
       spaceConfiguration = Prelude.Nothing,
       vpcConfiguration = Prelude.Nothing}
instance ToResourceProperties ConfluenceConfigurationProperty where
  toResourceProperties ConfluenceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.ConfluenceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SecretArn" JSON..= secretArn, "ServerUrl" JSON..= serverUrl,
                            "Version" JSON..= version]
                           (Prelude.catMaybes
                              [(JSON..=) "AttachmentConfiguration"
                                 Prelude.<$> attachmentConfiguration,
                               (JSON..=) "BlogConfiguration" Prelude.<$> blogConfiguration,
                               (JSON..=) "ExclusionPatterns" Prelude.<$> exclusionPatterns,
                               (JSON..=) "InclusionPatterns" Prelude.<$> inclusionPatterns,
                               (JSON..=) "PageConfiguration" Prelude.<$> pageConfiguration,
                               (JSON..=) "SpaceConfiguration" Prelude.<$> spaceConfiguration,
                               (JSON..=) "VpcConfiguration" Prelude.<$> vpcConfiguration]))}
instance JSON.ToJSON ConfluenceConfigurationProperty where
  toJSON ConfluenceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SecretArn" JSON..= secretArn, "ServerUrl" JSON..= serverUrl,
               "Version" JSON..= version]
              (Prelude.catMaybes
                 [(JSON..=) "AttachmentConfiguration"
                    Prelude.<$> attachmentConfiguration,
                  (JSON..=) "BlogConfiguration" Prelude.<$> blogConfiguration,
                  (JSON..=) "ExclusionPatterns" Prelude.<$> exclusionPatterns,
                  (JSON..=) "InclusionPatterns" Prelude.<$> inclusionPatterns,
                  (JSON..=) "PageConfiguration" Prelude.<$> pageConfiguration,
                  (JSON..=) "SpaceConfiguration" Prelude.<$> spaceConfiguration,
                  (JSON..=) "VpcConfiguration" Prelude.<$> vpcConfiguration])))
instance Property "AttachmentConfiguration" ConfluenceConfigurationProperty where
  type PropertyType "AttachmentConfiguration" ConfluenceConfigurationProperty = ConfluenceAttachmentConfigurationProperty
  set newValue ConfluenceConfigurationProperty {..}
    = ConfluenceConfigurationProperty
        {attachmentConfiguration = Prelude.pure newValue, ..}
instance Property "BlogConfiguration" ConfluenceConfigurationProperty where
  type PropertyType "BlogConfiguration" ConfluenceConfigurationProperty = ConfluenceBlogConfigurationProperty
  set newValue ConfluenceConfigurationProperty {..}
    = ConfluenceConfigurationProperty
        {blogConfiguration = Prelude.pure newValue, ..}
instance Property "ExclusionPatterns" ConfluenceConfigurationProperty where
  type PropertyType "ExclusionPatterns" ConfluenceConfigurationProperty = ValueList Prelude.Text
  set newValue ConfluenceConfigurationProperty {..}
    = ConfluenceConfigurationProperty
        {exclusionPatterns = Prelude.pure newValue, ..}
instance Property "InclusionPatterns" ConfluenceConfigurationProperty where
  type PropertyType "InclusionPatterns" ConfluenceConfigurationProperty = ValueList Prelude.Text
  set newValue ConfluenceConfigurationProperty {..}
    = ConfluenceConfigurationProperty
        {inclusionPatterns = Prelude.pure newValue, ..}
instance Property "PageConfiguration" ConfluenceConfigurationProperty where
  type PropertyType "PageConfiguration" ConfluenceConfigurationProperty = ConfluencePageConfigurationProperty
  set newValue ConfluenceConfigurationProperty {..}
    = ConfluenceConfigurationProperty
        {pageConfiguration = Prelude.pure newValue, ..}
instance Property "SecretArn" ConfluenceConfigurationProperty where
  type PropertyType "SecretArn" ConfluenceConfigurationProperty = Value Prelude.Text
  set newValue ConfluenceConfigurationProperty {..}
    = ConfluenceConfigurationProperty {secretArn = newValue, ..}
instance Property "ServerUrl" ConfluenceConfigurationProperty where
  type PropertyType "ServerUrl" ConfluenceConfigurationProperty = Value Prelude.Text
  set newValue ConfluenceConfigurationProperty {..}
    = ConfluenceConfigurationProperty {serverUrl = newValue, ..}
instance Property "SpaceConfiguration" ConfluenceConfigurationProperty where
  type PropertyType "SpaceConfiguration" ConfluenceConfigurationProperty = ConfluenceSpaceConfigurationProperty
  set newValue ConfluenceConfigurationProperty {..}
    = ConfluenceConfigurationProperty
        {spaceConfiguration = Prelude.pure newValue, ..}
instance Property "Version" ConfluenceConfigurationProperty where
  type PropertyType "Version" ConfluenceConfigurationProperty = Value Prelude.Text
  set newValue ConfluenceConfigurationProperty {..}
    = ConfluenceConfigurationProperty {version = newValue, ..}
instance Property "VpcConfiguration" ConfluenceConfigurationProperty where
  type PropertyType "VpcConfiguration" ConfluenceConfigurationProperty = DataSourceVpcConfigurationProperty
  set newValue ConfluenceConfigurationProperty {..}
    = ConfluenceConfigurationProperty
        {vpcConfiguration = Prelude.pure newValue, ..}