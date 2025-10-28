module Stratosphere.IoTSiteWise.AccessPolicy.UserProperty (
        UserProperty(..), mkUserProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-accesspolicy-user.html>
    UserProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-accesspolicy-user.html#cfn-iotsitewise-accesspolicy-user-id>
                  id :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserProperty :: UserProperty
mkUserProperty
  = UserProperty {haddock_workaround_ = (), id = Prelude.Nothing}
instance ToResourceProperties UserProperty where
  toResourceProperties UserProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AccessPolicy.User",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "id" Prelude.<$> id])}
instance JSON.ToJSON UserProperty where
  toJSON UserProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "id" Prelude.<$> id]))
instance Property "id" UserProperty where
  type PropertyType "id" UserProperty = Value Prelude.Text
  set newValue UserProperty {..}
    = UserProperty {id = Prelude.pure newValue, ..}