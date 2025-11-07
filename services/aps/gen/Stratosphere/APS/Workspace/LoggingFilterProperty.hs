module Stratosphere.APS.Workspace.LoggingFilterProperty (
        LoggingFilterProperty(..), mkLoggingFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggingFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-loggingfilter.html>
    LoggingFilterProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-loggingfilter.html#cfn-aps-workspace-loggingfilter-qspthreshold>
                           qspThreshold :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggingFilterProperty ::
  Value Prelude.Integer -> LoggingFilterProperty
mkLoggingFilterProperty qspThreshold
  = LoggingFilterProperty
      {haddock_workaround_ = (), qspThreshold = qspThreshold}
instance ToResourceProperties LoggingFilterProperty where
  toResourceProperties LoggingFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::APS::Workspace.LoggingFilter",
         supportsTags = Prelude.False,
         properties = ["QspThreshold" JSON..= qspThreshold]}
instance JSON.ToJSON LoggingFilterProperty where
  toJSON LoggingFilterProperty {..}
    = JSON.object ["QspThreshold" JSON..= qspThreshold]
instance Property "QspThreshold" LoggingFilterProperty where
  type PropertyType "QspThreshold" LoggingFilterProperty = Value Prelude.Integer
  set newValue LoggingFilterProperty {..}
    = LoggingFilterProperty {qspThreshold = newValue, ..}