module Stratosphere.S3.AccessGrantsInstance (
        AccessGrantsInstance(..), mkAccessGrantsInstance
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AccessGrantsInstance
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-accessgrantsinstance.html>
    AccessGrantsInstance {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-accessgrantsinstance.html#cfn-s3-accessgrantsinstance-identitycenterarn>
                          identityCenterArn :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-accessgrantsinstance.html#cfn-s3-accessgrantsinstance-tags>
                          tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessGrantsInstance :: AccessGrantsInstance
mkAccessGrantsInstance
  = AccessGrantsInstance
      {haddock_workaround_ = (), identityCenterArn = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties AccessGrantsInstance where
  toResourceProperties AccessGrantsInstance {..}
    = ResourceProperties
        {awsType = "AWS::S3::AccessGrantsInstance",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IdentityCenterArn" Prelude.<$> identityCenterArn,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON AccessGrantsInstance where
  toJSON AccessGrantsInstance {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IdentityCenterArn" Prelude.<$> identityCenterArn,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "IdentityCenterArn" AccessGrantsInstance where
  type PropertyType "IdentityCenterArn" AccessGrantsInstance = Value Prelude.Text
  set newValue AccessGrantsInstance {..}
    = AccessGrantsInstance
        {identityCenterArn = Prelude.pure newValue, ..}
instance Property "Tags" AccessGrantsInstance where
  type PropertyType "Tags" AccessGrantsInstance = [Tag]
  set newValue AccessGrantsInstance {..}
    = AccessGrantsInstance {tags = Prelude.pure newValue, ..}