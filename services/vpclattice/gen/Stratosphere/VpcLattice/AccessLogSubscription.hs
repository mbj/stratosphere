module Stratosphere.VpcLattice.AccessLogSubscription (
        AccessLogSubscription(..), mkAccessLogSubscription
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AccessLogSubscription
  = AccessLogSubscription {destinationArn :: (Value Prelude.Text),
                           resourceIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                           serviceNetworkLogType :: (Prelude.Maybe (Value Prelude.Text)),
                           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessLogSubscription ::
  Value Prelude.Text -> AccessLogSubscription
mkAccessLogSubscription destinationArn
  = AccessLogSubscription
      {destinationArn = destinationArn,
       resourceIdentifier = Prelude.Nothing,
       serviceNetworkLogType = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties AccessLogSubscription where
  toResourceProperties AccessLogSubscription {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::AccessLogSubscription",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DestinationArn" JSON..= destinationArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ResourceIdentifier" Prelude.<$> resourceIdentifier,
                               (JSON..=) "ServiceNetworkLogType"
                                 Prelude.<$> serviceNetworkLogType,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON AccessLogSubscription where
  toJSON AccessLogSubscription {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DestinationArn" JSON..= destinationArn]
              (Prelude.catMaybes
                 [(JSON..=) "ResourceIdentifier" Prelude.<$> resourceIdentifier,
                  (JSON..=) "ServiceNetworkLogType"
                    Prelude.<$> serviceNetworkLogType,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DestinationArn" AccessLogSubscription where
  type PropertyType "DestinationArn" AccessLogSubscription = Value Prelude.Text
  set newValue AccessLogSubscription {..}
    = AccessLogSubscription {destinationArn = newValue, ..}
instance Property "ResourceIdentifier" AccessLogSubscription where
  type PropertyType "ResourceIdentifier" AccessLogSubscription = Value Prelude.Text
  set newValue AccessLogSubscription {..}
    = AccessLogSubscription
        {resourceIdentifier = Prelude.pure newValue, ..}
instance Property "ServiceNetworkLogType" AccessLogSubscription where
  type PropertyType "ServiceNetworkLogType" AccessLogSubscription = Value Prelude.Text
  set newValue AccessLogSubscription {..}
    = AccessLogSubscription
        {serviceNetworkLogType = Prelude.pure newValue, ..}
instance Property "Tags" AccessLogSubscription where
  type PropertyType "Tags" AccessLogSubscription = [Tag]
  set newValue AccessLogSubscription {..}
    = AccessLogSubscription {tags = Prelude.pure newValue, ..}