module Stratosphere.FSx.StorageVirtualMachine.ActiveDirectoryConfigurationProperty (
        module Exports, ActiveDirectoryConfigurationProperty(..),
        mkActiveDirectoryConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FSx.StorageVirtualMachine.SelfManagedActiveDirectoryConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ActiveDirectoryConfigurationProperty
  = ActiveDirectoryConfigurationProperty {netBiosName :: (Prelude.Maybe (Value Prelude.Text)),
                                          selfManagedActiveDirectoryConfiguration :: (Prelude.Maybe SelfManagedActiveDirectoryConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActiveDirectoryConfigurationProperty ::
  ActiveDirectoryConfigurationProperty
mkActiveDirectoryConfigurationProperty
  = ActiveDirectoryConfigurationProperty
      {netBiosName = Prelude.Nothing,
       selfManagedActiveDirectoryConfiguration = Prelude.Nothing}
instance ToResourceProperties ActiveDirectoryConfigurationProperty where
  toResourceProperties ActiveDirectoryConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::StorageVirtualMachine.ActiveDirectoryConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NetBiosName" Prelude.<$> netBiosName,
                            (JSON..=) "SelfManagedActiveDirectoryConfiguration"
                              Prelude.<$> selfManagedActiveDirectoryConfiguration])}
instance JSON.ToJSON ActiveDirectoryConfigurationProperty where
  toJSON ActiveDirectoryConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NetBiosName" Prelude.<$> netBiosName,
               (JSON..=) "SelfManagedActiveDirectoryConfiguration"
                 Prelude.<$> selfManagedActiveDirectoryConfiguration]))
instance Property "NetBiosName" ActiveDirectoryConfigurationProperty where
  type PropertyType "NetBiosName" ActiveDirectoryConfigurationProperty = Value Prelude.Text
  set newValue ActiveDirectoryConfigurationProperty {..}
    = ActiveDirectoryConfigurationProperty
        {netBiosName = Prelude.pure newValue, ..}
instance Property "SelfManagedActiveDirectoryConfiguration" ActiveDirectoryConfigurationProperty where
  type PropertyType "SelfManagedActiveDirectoryConfiguration" ActiveDirectoryConfigurationProperty = SelfManagedActiveDirectoryConfigurationProperty
  set newValue ActiveDirectoryConfigurationProperty {..}
    = ActiveDirectoryConfigurationProperty
        {selfManagedActiveDirectoryConfiguration = Prelude.pure newValue,
         ..}