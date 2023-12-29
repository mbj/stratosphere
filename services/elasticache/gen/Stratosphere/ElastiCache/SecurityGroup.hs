module Stratosphere.ElastiCache.SecurityGroup (
        SecurityGroup(..), mkSecurityGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data SecurityGroup
  = SecurityGroup {description :: (Value Prelude.Text),
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecurityGroup :: Value Prelude.Text -> SecurityGroup
mkSecurityGroup description
  = SecurityGroup {description = description, tags = Prelude.Nothing}
instance ToResourceProperties SecurityGroup where
  toResourceProperties SecurityGroup {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::SecurityGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Description" JSON..= description]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON SecurityGroup where
  toJSON SecurityGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Description" JSON..= description]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" SecurityGroup where
  type PropertyType "Description" SecurityGroup = Value Prelude.Text
  set newValue SecurityGroup {..}
    = SecurityGroup {description = newValue, ..}
instance Property "Tags" SecurityGroup where
  type PropertyType "Tags" SecurityGroup = [Tag]
  set newValue SecurityGroup {..}
    = SecurityGroup {tags = Prelude.pure newValue, ..}