module Stratosphere.RTBFabric.Link.ResponderErrorMaskingForHttpCodeProperty (
        ResponderErrorMaskingForHttpCodeProperty(..),
        mkResponderErrorMaskingForHttpCodeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResponderErrorMaskingForHttpCodeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-respondererrormaskingforhttpcode.html>
    ResponderErrorMaskingForHttpCodeProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-respondererrormaskingforhttpcode.html#cfn-rtbfabric-link-respondererrormaskingforhttpcode-action>
                                              action :: (Value Prelude.Text),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-respondererrormaskingforhttpcode.html#cfn-rtbfabric-link-respondererrormaskingforhttpcode-httpcode>
                                              httpCode :: (Value Prelude.Text),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-respondererrormaskingforhttpcode.html#cfn-rtbfabric-link-respondererrormaskingforhttpcode-loggingtypes>
                                              loggingTypes :: (ValueList Prelude.Text),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-respondererrormaskingforhttpcode.html#cfn-rtbfabric-link-respondererrormaskingforhttpcode-responseloggingpercentage>
                                              responseLoggingPercentage :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResponderErrorMaskingForHttpCodeProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ValueList Prelude.Text
        -> ResponderErrorMaskingForHttpCodeProperty
mkResponderErrorMaskingForHttpCodeProperty
  action
  httpCode
  loggingTypes
  = ResponderErrorMaskingForHttpCodeProperty
      {haddock_workaround_ = (), action = action, httpCode = httpCode,
       loggingTypes = loggingTypes,
       responseLoggingPercentage = Prelude.Nothing}
instance ToResourceProperties ResponderErrorMaskingForHttpCodeProperty where
  toResourceProperties ResponderErrorMaskingForHttpCodeProperty {..}
    = ResourceProperties
        {awsType = "AWS::RTBFabric::Link.ResponderErrorMaskingForHttpCode",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Action" JSON..= action, "HttpCode" JSON..= httpCode,
                            "LoggingTypes" JSON..= loggingTypes]
                           (Prelude.catMaybes
                              [(JSON..=) "ResponseLoggingPercentage"
                                 Prelude.<$> responseLoggingPercentage]))}
instance JSON.ToJSON ResponderErrorMaskingForHttpCodeProperty where
  toJSON ResponderErrorMaskingForHttpCodeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action, "HttpCode" JSON..= httpCode,
               "LoggingTypes" JSON..= loggingTypes]
              (Prelude.catMaybes
                 [(JSON..=) "ResponseLoggingPercentage"
                    Prelude.<$> responseLoggingPercentage])))
instance Property "Action" ResponderErrorMaskingForHttpCodeProperty where
  type PropertyType "Action" ResponderErrorMaskingForHttpCodeProperty = Value Prelude.Text
  set newValue ResponderErrorMaskingForHttpCodeProperty {..}
    = ResponderErrorMaskingForHttpCodeProperty {action = newValue, ..}
instance Property "HttpCode" ResponderErrorMaskingForHttpCodeProperty where
  type PropertyType "HttpCode" ResponderErrorMaskingForHttpCodeProperty = Value Prelude.Text
  set newValue ResponderErrorMaskingForHttpCodeProperty {..}
    = ResponderErrorMaskingForHttpCodeProperty
        {httpCode = newValue, ..}
instance Property "LoggingTypes" ResponderErrorMaskingForHttpCodeProperty where
  type PropertyType "LoggingTypes" ResponderErrorMaskingForHttpCodeProperty = ValueList Prelude.Text
  set newValue ResponderErrorMaskingForHttpCodeProperty {..}
    = ResponderErrorMaskingForHttpCodeProperty
        {loggingTypes = newValue, ..}
instance Property "ResponseLoggingPercentage" ResponderErrorMaskingForHttpCodeProperty where
  type PropertyType "ResponseLoggingPercentage" ResponderErrorMaskingForHttpCodeProperty = Value Prelude.Double
  set newValue ResponderErrorMaskingForHttpCodeProperty {..}
    = ResponderErrorMaskingForHttpCodeProperty
        {responseLoggingPercentage = Prelude.pure newValue, ..}