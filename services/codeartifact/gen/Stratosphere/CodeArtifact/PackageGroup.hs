module Stratosphere.CodeArtifact.PackageGroup (
        module Exports, PackageGroup(..), mkPackageGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeArtifact.PackageGroup.OriginConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PackageGroup
  = PackageGroup {contactInfo :: (Prelude.Maybe (Value Prelude.Text)),
                  description :: (Prelude.Maybe (Value Prelude.Text)),
                  domainName :: (Value Prelude.Text),
                  domainOwner :: (Prelude.Maybe (Value Prelude.Text)),
                  originConfiguration :: (Prelude.Maybe OriginConfigurationProperty),
                  pattern :: (Value Prelude.Text),
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPackageGroup ::
  Value Prelude.Text -> Value Prelude.Text -> PackageGroup
mkPackageGroup domainName pattern
  = PackageGroup
      {domainName = domainName, pattern = pattern,
       contactInfo = Prelude.Nothing, description = Prelude.Nothing,
       domainOwner = Prelude.Nothing,
       originConfiguration = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties PackageGroup where
  toResourceProperties PackageGroup {..}
    = ResourceProperties
        {awsType = "AWS::CodeArtifact::PackageGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainName" JSON..= domainName, "Pattern" JSON..= pattern]
                           (Prelude.catMaybes
                              [(JSON..=) "ContactInfo" Prelude.<$> contactInfo,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DomainOwner" Prelude.<$> domainOwner,
                               (JSON..=) "OriginConfiguration" Prelude.<$> originConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON PackageGroup where
  toJSON PackageGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainName" JSON..= domainName, "Pattern" JSON..= pattern]
              (Prelude.catMaybes
                 [(JSON..=) "ContactInfo" Prelude.<$> contactInfo,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DomainOwner" Prelude.<$> domainOwner,
                  (JSON..=) "OriginConfiguration" Prelude.<$> originConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ContactInfo" PackageGroup where
  type PropertyType "ContactInfo" PackageGroup = Value Prelude.Text
  set newValue PackageGroup {..}
    = PackageGroup {contactInfo = Prelude.pure newValue, ..}
instance Property "Description" PackageGroup where
  type PropertyType "Description" PackageGroup = Value Prelude.Text
  set newValue PackageGroup {..}
    = PackageGroup {description = Prelude.pure newValue, ..}
instance Property "DomainName" PackageGroup where
  type PropertyType "DomainName" PackageGroup = Value Prelude.Text
  set newValue PackageGroup {..}
    = PackageGroup {domainName = newValue, ..}
instance Property "DomainOwner" PackageGroup where
  type PropertyType "DomainOwner" PackageGroup = Value Prelude.Text
  set newValue PackageGroup {..}
    = PackageGroup {domainOwner = Prelude.pure newValue, ..}
instance Property "OriginConfiguration" PackageGroup where
  type PropertyType "OriginConfiguration" PackageGroup = OriginConfigurationProperty
  set newValue PackageGroup {..}
    = PackageGroup {originConfiguration = Prelude.pure newValue, ..}
instance Property "Pattern" PackageGroup where
  type PropertyType "Pattern" PackageGroup = Value Prelude.Text
  set newValue PackageGroup {..}
    = PackageGroup {pattern = newValue, ..}
instance Property "Tags" PackageGroup where
  type PropertyType "Tags" PackageGroup = [Tag]
  set newValue PackageGroup {..}
    = PackageGroup {tags = Prelude.pure newValue, ..}