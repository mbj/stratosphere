module Stratosphere.S3.AccessGrantsLocation (
        AccessGrantsLocation(..), mkAccessGrantsLocation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AccessGrantsLocation
  = AccessGrantsLocation {iamRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                          locationScope :: (Prelude.Maybe (Value Prelude.Text)),
                          tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessGrantsLocation :: AccessGrantsLocation
mkAccessGrantsLocation
  = AccessGrantsLocation
      {iamRoleArn = Prelude.Nothing, locationScope = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties AccessGrantsLocation where
  toResourceProperties AccessGrantsLocation {..}
    = ResourceProperties
        {awsType = "AWS::S3::AccessGrantsLocation",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IamRoleArn" Prelude.<$> iamRoleArn,
                            (JSON..=) "LocationScope" Prelude.<$> locationScope,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON AccessGrantsLocation where
  toJSON AccessGrantsLocation {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IamRoleArn" Prelude.<$> iamRoleArn,
               (JSON..=) "LocationScope" Prelude.<$> locationScope,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "IamRoleArn" AccessGrantsLocation where
  type PropertyType "IamRoleArn" AccessGrantsLocation = Value Prelude.Text
  set newValue AccessGrantsLocation {..}
    = AccessGrantsLocation {iamRoleArn = Prelude.pure newValue, ..}
instance Property "LocationScope" AccessGrantsLocation where
  type PropertyType "LocationScope" AccessGrantsLocation = Value Prelude.Text
  set newValue AccessGrantsLocation {..}
    = AccessGrantsLocation {locationScope = Prelude.pure newValue, ..}
instance Property "Tags" AccessGrantsLocation where
  type PropertyType "Tags" AccessGrantsLocation = [Tag]
  set newValue AccessGrantsLocation {..}
    = AccessGrantsLocation {tags = Prelude.pure newValue, ..}