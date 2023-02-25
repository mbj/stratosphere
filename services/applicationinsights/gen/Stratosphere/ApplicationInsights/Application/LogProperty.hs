module Stratosphere.ApplicationInsights.Application.LogProperty (
        LogProperty(..), mkLogProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogProperty
  = LogProperty {encoding :: (Prelude.Maybe (Value Prelude.Text)),
                 logGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                 logPath :: (Prelude.Maybe (Value Prelude.Text)),
                 logType :: (Value Prelude.Text),
                 patternSet :: (Prelude.Maybe (Value Prelude.Text))}
mkLogProperty :: Value Prelude.Text -> LogProperty
mkLogProperty logType
  = LogProperty
      {logType = logType, encoding = Prelude.Nothing,
       logGroupName = Prelude.Nothing, logPath = Prelude.Nothing,
       patternSet = Prelude.Nothing}
instance ToResourceProperties LogProperty where
  toResourceProperties LogProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationInsights::Application.Log",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LogType" JSON..= logType]
                           (Prelude.catMaybes
                              [(JSON..=) "Encoding" Prelude.<$> encoding,
                               (JSON..=) "LogGroupName" Prelude.<$> logGroupName,
                               (JSON..=) "LogPath" Prelude.<$> logPath,
                               (JSON..=) "PatternSet" Prelude.<$> patternSet]))}
instance JSON.ToJSON LogProperty where
  toJSON LogProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LogType" JSON..= logType]
              (Prelude.catMaybes
                 [(JSON..=) "Encoding" Prelude.<$> encoding,
                  (JSON..=) "LogGroupName" Prelude.<$> logGroupName,
                  (JSON..=) "LogPath" Prelude.<$> logPath,
                  (JSON..=) "PatternSet" Prelude.<$> patternSet])))
instance Property "Encoding" LogProperty where
  type PropertyType "Encoding" LogProperty = Value Prelude.Text
  set newValue LogProperty {..}
    = LogProperty {encoding = Prelude.pure newValue, ..}
instance Property "LogGroupName" LogProperty where
  type PropertyType "LogGroupName" LogProperty = Value Prelude.Text
  set newValue LogProperty {..}
    = LogProperty {logGroupName = Prelude.pure newValue, ..}
instance Property "LogPath" LogProperty where
  type PropertyType "LogPath" LogProperty = Value Prelude.Text
  set newValue LogProperty {..}
    = LogProperty {logPath = Prelude.pure newValue, ..}
instance Property "LogType" LogProperty where
  type PropertyType "LogType" LogProperty = Value Prelude.Text
  set newValue LogProperty {..}
    = LogProperty {logType = newValue, ..}
instance Property "PatternSet" LogProperty where
  type PropertyType "PatternSet" LogProperty = Value Prelude.Text
  set newValue LogProperty {..}
    = LogProperty {patternSet = Prelude.pure newValue, ..}