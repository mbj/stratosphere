module Stratosphere.IoTFleetWise.Campaign.SignalFetchInformationProperty (
        module Exports, SignalFetchInformationProperty(..),
        mkSignalFetchInformationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTFleetWise.Campaign.SignalFetchConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SignalFetchInformationProperty
  = SignalFetchInformationProperty {actions :: (ValueList Prelude.Text),
                                    conditionLanguageVersion :: (Prelude.Maybe (Value Prelude.Double)),
                                    fullyQualifiedName :: (Value Prelude.Text),
                                    signalFetchConfig :: SignalFetchConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSignalFetchInformationProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text
     -> SignalFetchConfigProperty -> SignalFetchInformationProperty
mkSignalFetchInformationProperty
  actions
  fullyQualifiedName
  signalFetchConfig
  = SignalFetchInformationProperty
      {actions = actions, fullyQualifiedName = fullyQualifiedName,
       signalFetchConfig = signalFetchConfig,
       conditionLanguageVersion = Prelude.Nothing}
instance ToResourceProperties SignalFetchInformationProperty where
  toResourceProperties SignalFetchInformationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::Campaign.SignalFetchInformation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Actions" JSON..= actions,
                            "FullyQualifiedName" JSON..= fullyQualifiedName,
                            "SignalFetchConfig" JSON..= signalFetchConfig]
                           (Prelude.catMaybes
                              [(JSON..=) "ConditionLanguageVersion"
                                 Prelude.<$> conditionLanguageVersion]))}
instance JSON.ToJSON SignalFetchInformationProperty where
  toJSON SignalFetchInformationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Actions" JSON..= actions,
               "FullyQualifiedName" JSON..= fullyQualifiedName,
               "SignalFetchConfig" JSON..= signalFetchConfig]
              (Prelude.catMaybes
                 [(JSON..=) "ConditionLanguageVersion"
                    Prelude.<$> conditionLanguageVersion])))
instance Property "Actions" SignalFetchInformationProperty where
  type PropertyType "Actions" SignalFetchInformationProperty = ValueList Prelude.Text
  set newValue SignalFetchInformationProperty {..}
    = SignalFetchInformationProperty {actions = newValue, ..}
instance Property "ConditionLanguageVersion" SignalFetchInformationProperty where
  type PropertyType "ConditionLanguageVersion" SignalFetchInformationProperty = Value Prelude.Double
  set newValue SignalFetchInformationProperty {..}
    = SignalFetchInformationProperty
        {conditionLanguageVersion = Prelude.pure newValue, ..}
instance Property "FullyQualifiedName" SignalFetchInformationProperty where
  type PropertyType "FullyQualifiedName" SignalFetchInformationProperty = Value Prelude.Text
  set newValue SignalFetchInformationProperty {..}
    = SignalFetchInformationProperty
        {fullyQualifiedName = newValue, ..}
instance Property "SignalFetchConfig" SignalFetchInformationProperty where
  type PropertyType "SignalFetchConfig" SignalFetchInformationProperty = SignalFetchConfigProperty
  set newValue SignalFetchInformationProperty {..}
    = SignalFetchInformationProperty {signalFetchConfig = newValue, ..}