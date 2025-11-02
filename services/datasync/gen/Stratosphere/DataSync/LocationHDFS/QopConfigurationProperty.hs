module Stratosphere.DataSync.LocationHDFS.QopConfigurationProperty (
        QopConfigurationProperty(..), mkQopConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QopConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationhdfs-qopconfiguration.html>
    QopConfigurationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationhdfs-qopconfiguration.html#cfn-datasync-locationhdfs-qopconfiguration-datatransferprotection>
                              dataTransferProtection :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationhdfs-qopconfiguration.html#cfn-datasync-locationhdfs-qopconfiguration-rpcprotection>
                              rpcProtection :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQopConfigurationProperty :: QopConfigurationProperty
mkQopConfigurationProperty
  = QopConfigurationProperty
      {haddock_workaround_ = (),
       dataTransferProtection = Prelude.Nothing,
       rpcProtection = Prelude.Nothing}
instance ToResourceProperties QopConfigurationProperty where
  toResourceProperties QopConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationHDFS.QopConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataTransferProtection"
                              Prelude.<$> dataTransferProtection,
                            (JSON..=) "RpcProtection" Prelude.<$> rpcProtection])}
instance JSON.ToJSON QopConfigurationProperty where
  toJSON QopConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataTransferProtection"
                 Prelude.<$> dataTransferProtection,
               (JSON..=) "RpcProtection" Prelude.<$> rpcProtection]))
instance Property "DataTransferProtection" QopConfigurationProperty where
  type PropertyType "DataTransferProtection" QopConfigurationProperty = Value Prelude.Text
  set newValue QopConfigurationProperty {..}
    = QopConfigurationProperty
        {dataTransferProtection = Prelude.pure newValue, ..}
instance Property "RpcProtection" QopConfigurationProperty where
  type PropertyType "RpcProtection" QopConfigurationProperty = Value Prelude.Text
  set newValue QopConfigurationProperty {..}
    = QopConfigurationProperty
        {rpcProtection = Prelude.pure newValue, ..}