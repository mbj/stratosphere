module Stratosphere.S3.Bucket.RedirectAllRequestsToProperty (
        RedirectAllRequestsToProperty(..), mkRedirectAllRequestsToProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedirectAllRequestsToProperty
  = RedirectAllRequestsToProperty {hostName :: (Value Prelude.Text),
                                   protocol :: (Prelude.Maybe (Value Prelude.Text))}
mkRedirectAllRequestsToProperty ::
  Value Prelude.Text -> RedirectAllRequestsToProperty
mkRedirectAllRequestsToProperty hostName
  = RedirectAllRequestsToProperty
      {hostName = hostName, protocol = Prelude.Nothing}
instance ToResourceProperties RedirectAllRequestsToProperty where
  toResourceProperties RedirectAllRequestsToProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.RedirectAllRequestsTo",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["HostName" JSON..= hostName]
                           (Prelude.catMaybes [(JSON..=) "Protocol" Prelude.<$> protocol]))}
instance JSON.ToJSON RedirectAllRequestsToProperty where
  toJSON RedirectAllRequestsToProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["HostName" JSON..= hostName]
              (Prelude.catMaybes [(JSON..=) "Protocol" Prelude.<$> protocol])))
instance Property "HostName" RedirectAllRequestsToProperty where
  type PropertyType "HostName" RedirectAllRequestsToProperty = Value Prelude.Text
  set newValue RedirectAllRequestsToProperty {..}
    = RedirectAllRequestsToProperty {hostName = newValue, ..}
instance Property "Protocol" RedirectAllRequestsToProperty where
  type PropertyType "Protocol" RedirectAllRequestsToProperty = Value Prelude.Text
  set newValue RedirectAllRequestsToProperty {..}
    = RedirectAllRequestsToProperty
        {protocol = Prelude.pure newValue, ..}