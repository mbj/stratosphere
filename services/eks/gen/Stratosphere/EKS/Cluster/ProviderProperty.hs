module Stratosphere.EKS.Cluster.ProviderProperty (
        ProviderProperty(..), mkProviderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProviderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-provider.html>
    ProviderProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-provider.html#cfn-eks-cluster-provider-keyarn>
                      keyArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProviderProperty :: ProviderProperty
mkProviderProperty
  = ProviderProperty
      {haddock_workaround_ = (), keyArn = Prelude.Nothing}
instance ToResourceProperties ProviderProperty where
  toResourceProperties ProviderProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster.Provider",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "KeyArn" Prelude.<$> keyArn])}
instance JSON.ToJSON ProviderProperty where
  toJSON ProviderProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "KeyArn" Prelude.<$> keyArn]))
instance Property "KeyArn" ProviderProperty where
  type PropertyType "KeyArn" ProviderProperty = Value Prelude.Text
  set newValue ProviderProperty {..}
    = ProviderProperty {keyArn = Prelude.pure newValue, ..}