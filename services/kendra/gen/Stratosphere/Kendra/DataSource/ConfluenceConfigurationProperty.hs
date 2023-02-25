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
  = ConfluenceConfigurationProperty {attachmentConfiguration :: (Prelude.Maybe ConfluenceAttachmentConfigurationProperty),
                                     blogConfiguration :: (Prelude.Maybe ConfluenceBlogConfigurationProperty),
                                     exclusionPatterns :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                     inclusionPatterns :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                     pageConfiguration :: (Prelude.Maybe ConfluencePageConfigurationProperty),
                                     secretArn :: (Value Prelude.Text),
                                     serverUrl :: (Value Prelude.Text),
                                     spaceConfiguration :: (Prelude.Maybe ConfluenceSpaceConfigurationProperty),
                                     version :: (Value Prelude.Text),
                                     vpcConfiguration :: (Prelude.Maybe DataSourceVpcConfigurationProperty)}
mkConfluenceConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> ConfluenceConfigurationProperty
mkConfluenceConfigurationProperty secretArn serverUrl version
  = ConfluenceConfigurationProperty
      {secretArn = secretArn, serverUrl = serverUrl, version = version,
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
  type PropertyType "ExclusionPatterns" ConfluenceConfigurationProperty = ValueList (Value Prelude.Text)
  set newValue ConfluenceConfigurationProperty {..}
    = ConfluenceConfigurationProperty
        {exclusionPatterns = Prelude.pure newValue, ..}
instance Property "InclusionPatterns" ConfluenceConfigurationProperty where
  type PropertyType "InclusionPatterns" ConfluenceConfigurationProperty = ValueList (Value Prelude.Text)
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