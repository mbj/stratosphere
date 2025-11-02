module Stratosphere.MSK.Cluster.PublicAccessProperty (
        PublicAccessProperty(..), mkPublicAccessProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PublicAccessProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-publicaccess.html>
    PublicAccessProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-publicaccess.html#cfn-msk-cluster-publicaccess-type>
                          type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPublicAccessProperty :: PublicAccessProperty
mkPublicAccessProperty
  = PublicAccessProperty
      {haddock_workaround_ = (), type' = Prelude.Nothing}
instance ToResourceProperties PublicAccessProperty where
  toResourceProperties PublicAccessProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.PublicAccess",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON PublicAccessProperty where
  toJSON PublicAccessProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type']))
instance Property "Type" PublicAccessProperty where
  type PropertyType "Type" PublicAccessProperty = Value Prelude.Text
  set newValue PublicAccessProperty {..}
    = PublicAccessProperty {type' = Prelude.pure newValue, ..}