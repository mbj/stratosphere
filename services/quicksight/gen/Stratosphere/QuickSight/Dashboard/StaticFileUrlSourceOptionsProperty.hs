module Stratosphere.QuickSight.Dashboard.StaticFileUrlSourceOptionsProperty (
        StaticFileUrlSourceOptionsProperty(..),
        mkStaticFileUrlSourceOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StaticFileUrlSourceOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-staticfileurlsourceoptions.html>
    StaticFileUrlSourceOptionsProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-staticfileurlsourceoptions.html#cfn-quicksight-dashboard-staticfileurlsourceoptions-url>
                                        url :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStaticFileUrlSourceOptionsProperty ::
  Value Prelude.Text -> StaticFileUrlSourceOptionsProperty
mkStaticFileUrlSourceOptionsProperty url
  = StaticFileUrlSourceOptionsProperty
      {haddock_workaround_ = (), url = url}
instance ToResourceProperties StaticFileUrlSourceOptionsProperty where
  toResourceProperties StaticFileUrlSourceOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.StaticFileUrlSourceOptions",
         supportsTags = Prelude.False, properties = ["Url" JSON..= url]}
instance JSON.ToJSON StaticFileUrlSourceOptionsProperty where
  toJSON StaticFileUrlSourceOptionsProperty {..}
    = JSON.object ["Url" JSON..= url]
instance Property "Url" StaticFileUrlSourceOptionsProperty where
  type PropertyType "Url" StaticFileUrlSourceOptionsProperty = Value Prelude.Text
  set newValue StaticFileUrlSourceOptionsProperty {..}
    = StaticFileUrlSourceOptionsProperty {url = newValue, ..}