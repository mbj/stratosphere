module Stratosphere.KinesisAnalytics.Application (
        module Exports, Application(..), mkApplication
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalytics.Application.InputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Application
  = Application {applicationCode :: (Prelude.Maybe (Value Prelude.Text)),
                 applicationDescription :: (Prelude.Maybe (Value Prelude.Text)),
                 applicationName :: (Prelude.Maybe (Value Prelude.Text)),
                 inputs :: [InputProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplication :: [InputProperty] -> Application
mkApplication inputs
  = Application
      {inputs = inputs, applicationCode = Prelude.Nothing,
       applicationDescription = Prelude.Nothing,
       applicationName = Prelude.Nothing}
instance ToResourceProperties Application where
  toResourceProperties Application {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalytics::Application",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Inputs" JSON..= inputs]
                           (Prelude.catMaybes
                              [(JSON..=) "ApplicationCode" Prelude.<$> applicationCode,
                               (JSON..=) "ApplicationDescription"
                                 Prelude.<$> applicationDescription,
                               (JSON..=) "ApplicationName" Prelude.<$> applicationName]))}
instance JSON.ToJSON Application where
  toJSON Application {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Inputs" JSON..= inputs]
              (Prelude.catMaybes
                 [(JSON..=) "ApplicationCode" Prelude.<$> applicationCode,
                  (JSON..=) "ApplicationDescription"
                    Prelude.<$> applicationDescription,
                  (JSON..=) "ApplicationName" Prelude.<$> applicationName])))
instance Property "ApplicationCode" Application where
  type PropertyType "ApplicationCode" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {applicationCode = Prelude.pure newValue, ..}
instance Property "ApplicationDescription" Application where
  type PropertyType "ApplicationDescription" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {applicationDescription = Prelude.pure newValue, ..}
instance Property "ApplicationName" Application where
  type PropertyType "ApplicationName" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {applicationName = Prelude.pure newValue, ..}
instance Property "Inputs" Application where
  type PropertyType "Inputs" Application = [InputProperty]
  set newValue Application {..} = Application {inputs = newValue, ..}