module Stratosphere.Logs.LogStream (
        LogStream(..), mkLogStream
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogStream
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-logstream.html>
    LogStream {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-logstream.html#cfn-logs-logstream-loggroupname>
               logGroupName :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-logstream.html#cfn-logs-logstream-logstreamname>
               logStreamName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogStream :: Value Prelude.Text -> LogStream
mkLogStream logGroupName
  = LogStream
      {haddock_workaround_ = (), logGroupName = logGroupName,
       logStreamName = Prelude.Nothing}
instance ToResourceProperties LogStream where
  toResourceProperties LogStream {..}
    = ResourceProperties
        {awsType = "AWS::Logs::LogStream", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LogGroupName" JSON..= logGroupName]
                           (Prelude.catMaybes
                              [(JSON..=) "LogStreamName" Prelude.<$> logStreamName]))}
instance JSON.ToJSON LogStream where
  toJSON LogStream {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LogGroupName" JSON..= logGroupName]
              (Prelude.catMaybes
                 [(JSON..=) "LogStreamName" Prelude.<$> logStreamName])))
instance Property "LogGroupName" LogStream where
  type PropertyType "LogGroupName" LogStream = Value Prelude.Text
  set newValue LogStream {..}
    = LogStream {logGroupName = newValue, ..}
instance Property "LogStreamName" LogStream where
  type PropertyType "LogStreamName" LogStream = Value Prelude.Text
  set newValue LogStream {..}
    = LogStream {logStreamName = Prelude.pure newValue, ..}