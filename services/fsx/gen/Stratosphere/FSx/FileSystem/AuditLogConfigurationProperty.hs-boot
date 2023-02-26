module Stratosphere.FSx.FileSystem.AuditLogConfigurationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AuditLogConfigurationProperty :: Prelude.Type
instance ToResourceProperties AuditLogConfigurationProperty
instance JSON.ToJSON AuditLogConfigurationProperty