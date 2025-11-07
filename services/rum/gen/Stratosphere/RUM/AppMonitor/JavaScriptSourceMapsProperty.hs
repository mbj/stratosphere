module Stratosphere.RUM.AppMonitor.JavaScriptSourceMapsProperty (
        JavaScriptSourceMapsProperty(..), mkJavaScriptSourceMapsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JavaScriptSourceMapsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rum-appmonitor-javascriptsourcemaps.html>
    JavaScriptSourceMapsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rum-appmonitor-javascriptsourcemaps.html#cfn-rum-appmonitor-javascriptsourcemaps-s3uri>
                                  s3Uri :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rum-appmonitor-javascriptsourcemaps.html#cfn-rum-appmonitor-javascriptsourcemaps-status>
                                  status :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJavaScriptSourceMapsProperty ::
  Value Prelude.Text -> JavaScriptSourceMapsProperty
mkJavaScriptSourceMapsProperty status
  = JavaScriptSourceMapsProperty
      {haddock_workaround_ = (), status = status,
       s3Uri = Prelude.Nothing}
instance ToResourceProperties JavaScriptSourceMapsProperty where
  toResourceProperties JavaScriptSourceMapsProperty {..}
    = ResourceProperties
        {awsType = "AWS::RUM::AppMonitor.JavaScriptSourceMaps",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Status" JSON..= status]
                           (Prelude.catMaybes [(JSON..=) "S3Uri" Prelude.<$> s3Uri]))}
instance JSON.ToJSON JavaScriptSourceMapsProperty where
  toJSON JavaScriptSourceMapsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Status" JSON..= status]
              (Prelude.catMaybes [(JSON..=) "S3Uri" Prelude.<$> s3Uri])))
instance Property "S3Uri" JavaScriptSourceMapsProperty where
  type PropertyType "S3Uri" JavaScriptSourceMapsProperty = Value Prelude.Text
  set newValue JavaScriptSourceMapsProperty {..}
    = JavaScriptSourceMapsProperty {s3Uri = Prelude.pure newValue, ..}
instance Property "Status" JavaScriptSourceMapsProperty where
  type PropertyType "Status" JavaScriptSourceMapsProperty = Value Prelude.Text
  set newValue JavaScriptSourceMapsProperty {..}
    = JavaScriptSourceMapsProperty {status = newValue, ..}