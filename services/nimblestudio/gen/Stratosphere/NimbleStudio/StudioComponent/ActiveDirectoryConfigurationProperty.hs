module Stratosphere.NimbleStudio.StudioComponent.ActiveDirectoryConfigurationProperty (
        module Exports, ActiveDirectoryConfigurationProperty(..),
        mkActiveDirectoryConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NimbleStudio.StudioComponent.ActiveDirectoryComputerAttributeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ActiveDirectoryConfigurationProperty
  = ActiveDirectoryConfigurationProperty {computerAttributes :: (Prelude.Maybe [ActiveDirectoryComputerAttributeProperty]),
                                          directoryId :: (Prelude.Maybe (Value Prelude.Text)),
                                          organizationalUnitDistinguishedName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActiveDirectoryConfigurationProperty ::
  ActiveDirectoryConfigurationProperty
mkActiveDirectoryConfigurationProperty
  = ActiveDirectoryConfigurationProperty
      {computerAttributes = Prelude.Nothing,
       directoryId = Prelude.Nothing,
       organizationalUnitDistinguishedName = Prelude.Nothing}
instance ToResourceProperties ActiveDirectoryConfigurationProperty where
  toResourceProperties ActiveDirectoryConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::NimbleStudio::StudioComponent.ActiveDirectoryConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComputerAttributes" Prelude.<$> computerAttributes,
                            (JSON..=) "DirectoryId" Prelude.<$> directoryId,
                            (JSON..=) "OrganizationalUnitDistinguishedName"
                              Prelude.<$> organizationalUnitDistinguishedName])}
instance JSON.ToJSON ActiveDirectoryConfigurationProperty where
  toJSON ActiveDirectoryConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComputerAttributes" Prelude.<$> computerAttributes,
               (JSON..=) "DirectoryId" Prelude.<$> directoryId,
               (JSON..=) "OrganizationalUnitDistinguishedName"
                 Prelude.<$> organizationalUnitDistinguishedName]))
instance Property "ComputerAttributes" ActiveDirectoryConfigurationProperty where
  type PropertyType "ComputerAttributes" ActiveDirectoryConfigurationProperty = [ActiveDirectoryComputerAttributeProperty]
  set newValue ActiveDirectoryConfigurationProperty {..}
    = ActiveDirectoryConfigurationProperty
        {computerAttributes = Prelude.pure newValue, ..}
instance Property "DirectoryId" ActiveDirectoryConfigurationProperty where
  type PropertyType "DirectoryId" ActiveDirectoryConfigurationProperty = Value Prelude.Text
  set newValue ActiveDirectoryConfigurationProperty {..}
    = ActiveDirectoryConfigurationProperty
        {directoryId = Prelude.pure newValue, ..}
instance Property "OrganizationalUnitDistinguishedName" ActiveDirectoryConfigurationProperty where
  type PropertyType "OrganizationalUnitDistinguishedName" ActiveDirectoryConfigurationProperty = Value Prelude.Text
  set newValue ActiveDirectoryConfigurationProperty {..}
    = ActiveDirectoryConfigurationProperty
        {organizationalUnitDistinguishedName = Prelude.pure newValue, ..}