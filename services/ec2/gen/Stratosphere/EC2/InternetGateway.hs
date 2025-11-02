module Stratosphere.EC2.InternetGateway (
        InternetGateway(..), mkInternetGateway
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
data InternetGateway
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-internetgateway.html>
    InternetGateway {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-internetgateway.html#cfn-ec2-internetgateway-tags>
                     tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInternetGateway :: InternetGateway
mkInternetGateway
  = InternetGateway
      {haddock_workaround_ = (), tags = Prelude.Nothing}
instance ToResourceProperties InternetGateway where
  toResourceProperties InternetGateway {..}
    = ResourceProperties
        {awsType = "AWS::EC2::InternetGateway",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON InternetGateway where
  toJSON InternetGateway {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Tags" InternetGateway where
  type PropertyType "Tags" InternetGateway = [Tag]
  set newValue InternetGateway {..}
    = InternetGateway {tags = Prelude.pure newValue, ..}