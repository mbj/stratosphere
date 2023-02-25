module Stratosphere.EKS.Cluster.LoggingTypeConfigProperty (
        LoggingTypeConfigProperty(..), mkLoggingTypeConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggingTypeConfigProperty
  = LoggingTypeConfigProperty {type' :: (Prelude.Maybe (Value Prelude.Text))}
mkLoggingTypeConfigProperty :: LoggingTypeConfigProperty
mkLoggingTypeConfigProperty
  = LoggingTypeConfigProperty {type' = Prelude.Nothing}
instance ToResourceProperties LoggingTypeConfigProperty where
  toResourceProperties LoggingTypeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster.LoggingTypeConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON LoggingTypeConfigProperty where
  toJSON LoggingTypeConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type']))
instance Property "Type" LoggingTypeConfigProperty where
  type PropertyType "Type" LoggingTypeConfigProperty = Value Prelude.Text
  set newValue LoggingTypeConfigProperty {}
    = LoggingTypeConfigProperty {type' = Prelude.pure newValue, ..}