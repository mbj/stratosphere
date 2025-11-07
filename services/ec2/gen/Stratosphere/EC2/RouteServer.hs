module Stratosphere.EC2.RouteServer (
        RouteServer(..), mkRouteServer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data RouteServer
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routeserver.html>
    RouteServer {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routeserver.html#cfn-ec2-routeserver-amazonsideasn>
                 amazonSideAsn :: (Value Prelude.Integer),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routeserver.html#cfn-ec2-routeserver-persistroutes>
                 persistRoutes :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routeserver.html#cfn-ec2-routeserver-persistroutesduration>
                 persistRoutesDuration :: (Prelude.Maybe (Value Prelude.Integer)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routeserver.html#cfn-ec2-routeserver-snsnotificationsenabled>
                 snsNotificationsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routeserver.html#cfn-ec2-routeserver-tags>
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRouteServer :: Value Prelude.Integer -> RouteServer
mkRouteServer amazonSideAsn
  = RouteServer
      {haddock_workaround_ = (), amazonSideAsn = amazonSideAsn,
       persistRoutes = Prelude.Nothing,
       persistRoutesDuration = Prelude.Nothing,
       snsNotificationsEnabled = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties RouteServer where
  toResourceProperties RouteServer {..}
    = ResourceProperties
        {awsType = "AWS::EC2::RouteServer", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AmazonSideAsn" JSON..= amazonSideAsn]
                           (Prelude.catMaybes
                              [(JSON..=) "PersistRoutes" Prelude.<$> persistRoutes,
                               (JSON..=) "PersistRoutesDuration"
                                 Prelude.<$> persistRoutesDuration,
                               (JSON..=) "SnsNotificationsEnabled"
                                 Prelude.<$> snsNotificationsEnabled,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON RouteServer where
  toJSON RouteServer {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AmazonSideAsn" JSON..= amazonSideAsn]
              (Prelude.catMaybes
                 [(JSON..=) "PersistRoutes" Prelude.<$> persistRoutes,
                  (JSON..=) "PersistRoutesDuration"
                    Prelude.<$> persistRoutesDuration,
                  (JSON..=) "SnsNotificationsEnabled"
                    Prelude.<$> snsNotificationsEnabled,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AmazonSideAsn" RouteServer where
  type PropertyType "AmazonSideAsn" RouteServer = Value Prelude.Integer
  set newValue RouteServer {..}
    = RouteServer {amazonSideAsn = newValue, ..}
instance Property "PersistRoutes" RouteServer where
  type PropertyType "PersistRoutes" RouteServer = Value Prelude.Text
  set newValue RouteServer {..}
    = RouteServer {persistRoutes = Prelude.pure newValue, ..}
instance Property "PersistRoutesDuration" RouteServer where
  type PropertyType "PersistRoutesDuration" RouteServer = Value Prelude.Integer
  set newValue RouteServer {..}
    = RouteServer {persistRoutesDuration = Prelude.pure newValue, ..}
instance Property "SnsNotificationsEnabled" RouteServer where
  type PropertyType "SnsNotificationsEnabled" RouteServer = Value Prelude.Bool
  set newValue RouteServer {..}
    = RouteServer {snsNotificationsEnabled = Prelude.pure newValue, ..}
instance Property "Tags" RouteServer where
  type PropertyType "Tags" RouteServer = [Tag]
  set newValue RouteServer {..}
    = RouteServer {tags = Prelude.pure newValue, ..}