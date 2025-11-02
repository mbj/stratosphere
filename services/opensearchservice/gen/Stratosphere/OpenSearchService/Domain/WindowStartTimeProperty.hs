module Stratosphere.OpenSearchService.Domain.WindowStartTimeProperty (
        WindowStartTimeProperty(..), mkWindowStartTimeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WindowStartTimeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-windowstarttime.html>
    WindowStartTimeProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-windowstarttime.html#cfn-opensearchservice-domain-windowstarttime-hours>
                             hours :: (Value Prelude.Integer),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-windowstarttime.html#cfn-opensearchservice-domain-windowstarttime-minutes>
                             minutes :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWindowStartTimeProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> WindowStartTimeProperty
mkWindowStartTimeProperty hours minutes
  = WindowStartTimeProperty
      {haddock_workaround_ = (), hours = hours, minutes = minutes}
instance ToResourceProperties WindowStartTimeProperty where
  toResourceProperties WindowStartTimeProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.WindowStartTime",
         supportsTags = Prelude.False,
         properties = ["Hours" JSON..= hours, "Minutes" JSON..= minutes]}
instance JSON.ToJSON WindowStartTimeProperty where
  toJSON WindowStartTimeProperty {..}
    = JSON.object ["Hours" JSON..= hours, "Minutes" JSON..= minutes]
instance Property "Hours" WindowStartTimeProperty where
  type PropertyType "Hours" WindowStartTimeProperty = Value Prelude.Integer
  set newValue WindowStartTimeProperty {..}
    = WindowStartTimeProperty {hours = newValue, ..}
instance Property "Minutes" WindowStartTimeProperty where
  type PropertyType "Minutes" WindowStartTimeProperty = Value Prelude.Integer
  set newValue WindowStartTimeProperty {..}
    = WindowStartTimeProperty {minutes = newValue, ..}