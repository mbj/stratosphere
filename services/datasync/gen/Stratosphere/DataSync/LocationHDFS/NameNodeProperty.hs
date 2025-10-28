module Stratosphere.DataSync.LocationHDFS.NameNodeProperty (
        NameNodeProperty(..), mkNameNodeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NameNodeProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationhdfs-namenode.html>
    NameNodeProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationhdfs-namenode.html#cfn-datasync-locationhdfs-namenode-hostname>
                      hostname :: (Value Prelude.Text),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationhdfs-namenode.html#cfn-datasync-locationhdfs-namenode-port>
                      port :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNameNodeProperty ::
  Value Prelude.Text -> Value Prelude.Integer -> NameNodeProperty
mkNameNodeProperty hostname port
  = NameNodeProperty {hostname = hostname, port = port}
instance ToResourceProperties NameNodeProperty where
  toResourceProperties NameNodeProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationHDFS.NameNode",
         supportsTags = Prelude.False,
         properties = ["Hostname" JSON..= hostname, "Port" JSON..= port]}
instance JSON.ToJSON NameNodeProperty where
  toJSON NameNodeProperty {..}
    = JSON.object ["Hostname" JSON..= hostname, "Port" JSON..= port]
instance Property "Hostname" NameNodeProperty where
  type PropertyType "Hostname" NameNodeProperty = Value Prelude.Text
  set newValue NameNodeProperty {..}
    = NameNodeProperty {hostname = newValue, ..}
instance Property "Port" NameNodeProperty where
  type PropertyType "Port" NameNodeProperty = Value Prelude.Integer
  set newValue NameNodeProperty {..}
    = NameNodeProperty {port = newValue, ..}