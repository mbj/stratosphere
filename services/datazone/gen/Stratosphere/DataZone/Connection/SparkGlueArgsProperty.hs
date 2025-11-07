module Stratosphere.DataZone.Connection.SparkGlueArgsProperty (
        SparkGlueArgsProperty(..), mkSparkGlueArgsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SparkGlueArgsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-sparkglueargs.html>
    SparkGlueArgsProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-sparkglueargs.html#cfn-datazone-connection-sparkglueargs-connection>
                           connection :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSparkGlueArgsProperty :: SparkGlueArgsProperty
mkSparkGlueArgsProperty
  = SparkGlueArgsProperty
      {haddock_workaround_ = (), connection = Prelude.Nothing}
instance ToResourceProperties SparkGlueArgsProperty where
  toResourceProperties SparkGlueArgsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Connection.SparkGlueArgs",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Connection" Prelude.<$> connection])}
instance JSON.ToJSON SparkGlueArgsProperty where
  toJSON SparkGlueArgsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Connection" Prelude.<$> connection]))
instance Property "Connection" SparkGlueArgsProperty where
  type PropertyType "Connection" SparkGlueArgsProperty = Value Prelude.Text
  set newValue SparkGlueArgsProperty {..}
    = SparkGlueArgsProperty {connection = Prelude.pure newValue, ..}