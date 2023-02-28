module Stratosphere.DataSync.LocationHDFS (
        module Exports, LocationHDFS(..), mkLocationHDFS
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataSync.LocationHDFS.NameNodeProperty as Exports
import {-# SOURCE #-} Stratosphere.DataSync.LocationHDFS.QopConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LocationHDFS
  = LocationHDFS {agentArns :: (ValueList Prelude.Text),
                  authenticationType :: (Value Prelude.Text),
                  blockSize :: (Prelude.Maybe (Value Prelude.Integer)),
                  kerberosKeytab :: (Prelude.Maybe (Value Prelude.Text)),
                  kerberosKrb5Conf :: (Prelude.Maybe (Value Prelude.Text)),
                  kerberosPrincipal :: (Prelude.Maybe (Value Prelude.Text)),
                  kmsKeyProviderUri :: (Prelude.Maybe (Value Prelude.Text)),
                  nameNodes :: [NameNodeProperty],
                  qopConfiguration :: (Prelude.Maybe QopConfigurationProperty),
                  replicationFactor :: (Prelude.Maybe (Value Prelude.Integer)),
                  simpleUser :: (Prelude.Maybe (Value Prelude.Text)),
                  subdirectory :: (Prelude.Maybe (Value Prelude.Text)),
                  tags :: (Prelude.Maybe [Tag])}
mkLocationHDFS ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> [NameNodeProperty] -> LocationHDFS
mkLocationHDFS agentArns authenticationType nameNodes
  = LocationHDFS
      {agentArns = agentArns, authenticationType = authenticationType,
       nameNodes = nameNodes, blockSize = Prelude.Nothing,
       kerberosKeytab = Prelude.Nothing,
       kerberosKrb5Conf = Prelude.Nothing,
       kerberosPrincipal = Prelude.Nothing,
       kmsKeyProviderUri = Prelude.Nothing,
       qopConfiguration = Prelude.Nothing,
       replicationFactor = Prelude.Nothing, simpleUser = Prelude.Nothing,
       subdirectory = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties LocationHDFS where
  toResourceProperties LocationHDFS {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationHDFS",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AgentArns" JSON..= agentArns,
                            "AuthenticationType" JSON..= authenticationType,
                            "NameNodes" JSON..= nameNodes]
                           (Prelude.catMaybes
                              [(JSON..=) "BlockSize" Prelude.<$> blockSize,
                               (JSON..=) "KerberosKeytab" Prelude.<$> kerberosKeytab,
                               (JSON..=) "KerberosKrb5Conf" Prelude.<$> kerberosKrb5Conf,
                               (JSON..=) "KerberosPrincipal" Prelude.<$> kerberosPrincipal,
                               (JSON..=) "KmsKeyProviderUri" Prelude.<$> kmsKeyProviderUri,
                               (JSON..=) "QopConfiguration" Prelude.<$> qopConfiguration,
                               (JSON..=) "ReplicationFactor" Prelude.<$> replicationFactor,
                               (JSON..=) "SimpleUser" Prelude.<$> simpleUser,
                               (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LocationHDFS where
  toJSON LocationHDFS {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AgentArns" JSON..= agentArns,
               "AuthenticationType" JSON..= authenticationType,
               "NameNodes" JSON..= nameNodes]
              (Prelude.catMaybes
                 [(JSON..=) "BlockSize" Prelude.<$> blockSize,
                  (JSON..=) "KerberosKeytab" Prelude.<$> kerberosKeytab,
                  (JSON..=) "KerberosKrb5Conf" Prelude.<$> kerberosKrb5Conf,
                  (JSON..=) "KerberosPrincipal" Prelude.<$> kerberosPrincipal,
                  (JSON..=) "KmsKeyProviderUri" Prelude.<$> kmsKeyProviderUri,
                  (JSON..=) "QopConfiguration" Prelude.<$> qopConfiguration,
                  (JSON..=) "ReplicationFactor" Prelude.<$> replicationFactor,
                  (JSON..=) "SimpleUser" Prelude.<$> simpleUser,
                  (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AgentArns" LocationHDFS where
  type PropertyType "AgentArns" LocationHDFS = ValueList Prelude.Text
  set newValue LocationHDFS {..}
    = LocationHDFS {agentArns = newValue, ..}
instance Property "AuthenticationType" LocationHDFS where
  type PropertyType "AuthenticationType" LocationHDFS = Value Prelude.Text
  set newValue LocationHDFS {..}
    = LocationHDFS {authenticationType = newValue, ..}
instance Property "BlockSize" LocationHDFS where
  type PropertyType "BlockSize" LocationHDFS = Value Prelude.Integer
  set newValue LocationHDFS {..}
    = LocationHDFS {blockSize = Prelude.pure newValue, ..}
instance Property "KerberosKeytab" LocationHDFS where
  type PropertyType "KerberosKeytab" LocationHDFS = Value Prelude.Text
  set newValue LocationHDFS {..}
    = LocationHDFS {kerberosKeytab = Prelude.pure newValue, ..}
instance Property "KerberosKrb5Conf" LocationHDFS where
  type PropertyType "KerberosKrb5Conf" LocationHDFS = Value Prelude.Text
  set newValue LocationHDFS {..}
    = LocationHDFS {kerberosKrb5Conf = Prelude.pure newValue, ..}
instance Property "KerberosPrincipal" LocationHDFS where
  type PropertyType "KerberosPrincipal" LocationHDFS = Value Prelude.Text
  set newValue LocationHDFS {..}
    = LocationHDFS {kerberosPrincipal = Prelude.pure newValue, ..}
instance Property "KmsKeyProviderUri" LocationHDFS where
  type PropertyType "KmsKeyProviderUri" LocationHDFS = Value Prelude.Text
  set newValue LocationHDFS {..}
    = LocationHDFS {kmsKeyProviderUri = Prelude.pure newValue, ..}
instance Property "NameNodes" LocationHDFS where
  type PropertyType "NameNodes" LocationHDFS = [NameNodeProperty]
  set newValue LocationHDFS {..}
    = LocationHDFS {nameNodes = newValue, ..}
instance Property "QopConfiguration" LocationHDFS where
  type PropertyType "QopConfiguration" LocationHDFS = QopConfigurationProperty
  set newValue LocationHDFS {..}
    = LocationHDFS {qopConfiguration = Prelude.pure newValue, ..}
instance Property "ReplicationFactor" LocationHDFS where
  type PropertyType "ReplicationFactor" LocationHDFS = Value Prelude.Integer
  set newValue LocationHDFS {..}
    = LocationHDFS {replicationFactor = Prelude.pure newValue, ..}
instance Property "SimpleUser" LocationHDFS where
  type PropertyType "SimpleUser" LocationHDFS = Value Prelude.Text
  set newValue LocationHDFS {..}
    = LocationHDFS {simpleUser = Prelude.pure newValue, ..}
instance Property "Subdirectory" LocationHDFS where
  type PropertyType "Subdirectory" LocationHDFS = Value Prelude.Text
  set newValue LocationHDFS {..}
    = LocationHDFS {subdirectory = Prelude.pure newValue, ..}
instance Property "Tags" LocationHDFS where
  type PropertyType "Tags" LocationHDFS = [Tag]
  set newValue LocationHDFS {..}
    = LocationHDFS {tags = Prelude.pure newValue, ..}