module Stratosphere.EKS.Cluster.LoggingTypeConfigProperty (
        LoggingTypeConfigProperty(..), mkLoggingTypeConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggingTypeConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-loggingtypeconfig.html>
    LoggingTypeConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-loggingtypeconfig.html#cfn-eks-cluster-loggingtypeconfig-type>
                               type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggingTypeConfigProperty :: LoggingTypeConfigProperty
mkLoggingTypeConfigProperty
  = LoggingTypeConfigProperty
      {haddock_workaround_ = (), type' = Prelude.Nothing}
instance ToResourceProperties LoggingTypeConfigProperty where
  toResourceProperties LoggingTypeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster.LoggingTypeConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON LoggingTypeConfigProperty where
  toJSON LoggingTypeConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type']))
instance Property "Type" LoggingTypeConfigProperty where
  type PropertyType "Type" LoggingTypeConfigProperty = Value Prelude.Text
  set newValue LoggingTypeConfigProperty {..}
    = LoggingTypeConfigProperty {type' = Prelude.pure newValue, ..}