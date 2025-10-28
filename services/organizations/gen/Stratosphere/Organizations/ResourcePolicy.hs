module Stratosphere.Organizations.ResourcePolicy (
        ResourcePolicy(..), mkResourcePolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
data ResourcePolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-organizations-resourcepolicy.html>
    ResourcePolicy {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-organizations-resourcepolicy.html#cfn-organizations-resourcepolicy-content>
                    content :: JSON.Object,
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-organizations-resourcepolicy.html#cfn-organizations-resourcepolicy-tags>
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourcePolicy :: JSON.Object -> ResourcePolicy
mkResourcePolicy content
  = ResourcePolicy
      {haddock_workaround_ = (), content = content,
       tags = Prelude.Nothing}
instance ToResourceProperties ResourcePolicy where
  toResourceProperties ResourcePolicy {..}
    = ResourceProperties
        {awsType = "AWS::Organizations::ResourcePolicy",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Content" JSON..= content]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ResourcePolicy where
  toJSON ResourcePolicy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Content" JSON..= content]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Content" ResourcePolicy where
  type PropertyType "Content" ResourcePolicy = JSON.Object
  set newValue ResourcePolicy {..}
    = ResourcePolicy {content = newValue, ..}
instance Property "Tags" ResourcePolicy where
  type PropertyType "Tags" ResourcePolicy = [Tag]
  set newValue ResourcePolicy {..}
    = ResourcePolicy {tags = Prelude.pure newValue, ..}