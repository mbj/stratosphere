module Stratosphere.Redshift.ClusterSecurityGroup (
        ClusterSecurityGroup(..), mkClusterSecurityGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ClusterSecurityGroup
  = ClusterSecurityGroup {description :: (Value Prelude.Text),
                          tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClusterSecurityGroup ::
  Value Prelude.Text -> ClusterSecurityGroup
mkClusterSecurityGroup description
  = ClusterSecurityGroup
      {description = description, tags = Prelude.Nothing}
instance ToResourceProperties ClusterSecurityGroup where
  toResourceProperties ClusterSecurityGroup {..}
    = ResourceProperties
        {awsType = "AWS::Redshift::ClusterSecurityGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Description" JSON..= description]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ClusterSecurityGroup where
  toJSON ClusterSecurityGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Description" JSON..= description]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" ClusterSecurityGroup where
  type PropertyType "Description" ClusterSecurityGroup = Value Prelude.Text
  set newValue ClusterSecurityGroup {..}
    = ClusterSecurityGroup {description = newValue, ..}
instance Property "Tags" ClusterSecurityGroup where
  type PropertyType "Tags" ClusterSecurityGroup = [Tag]
  set newValue ClusterSecurityGroup {..}
    = ClusterSecurityGroup {tags = Prelude.pure newValue, ..}