module Stratosphere.Pinpoint.ApplicationSettings.QuietTimeProperty (
        QuietTimeProperty(..), mkQuietTimeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QuietTimeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-quiettime.html>
    QuietTimeProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-quiettime.html#cfn-pinpoint-applicationsettings-quiettime-end>
                       end :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-quiettime.html#cfn-pinpoint-applicationsettings-quiettime-start>
                       start :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQuietTimeProperty ::
  Value Prelude.Text -> Value Prelude.Text -> QuietTimeProperty
mkQuietTimeProperty end start
  = QuietTimeProperty
      {haddock_workaround_ = (), end = end, start = start}
instance ToResourceProperties QuietTimeProperty where
  toResourceProperties QuietTimeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::ApplicationSettings.QuietTime",
         supportsTags = Prelude.False,
         properties = ["End" JSON..= end, "Start" JSON..= start]}
instance JSON.ToJSON QuietTimeProperty where
  toJSON QuietTimeProperty {..}
    = JSON.object ["End" JSON..= end, "Start" JSON..= start]
instance Property "End" QuietTimeProperty where
  type PropertyType "End" QuietTimeProperty = Value Prelude.Text
  set newValue QuietTimeProperty {..}
    = QuietTimeProperty {end = newValue, ..}
instance Property "Start" QuietTimeProperty where
  type PropertyType "Start" QuietTimeProperty = Value Prelude.Text
  set newValue QuietTimeProperty {..}
    = QuietTimeProperty {start = newValue, ..}