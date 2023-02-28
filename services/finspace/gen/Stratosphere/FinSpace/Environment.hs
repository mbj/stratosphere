module Stratosphere.FinSpace.Environment (
        module Exports, Environment(..), mkEnvironment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FinSpace.Environment.FederationParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.FinSpace.Environment.SuperuserParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Environment
  = Environment {dataBundles :: (Prelude.Maybe (ValueList Prelude.Text)),
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 federationMode :: (Prelude.Maybe (Value Prelude.Text)),
                 federationParameters :: (Prelude.Maybe FederationParametersProperty),
                 kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                 name :: (Value Prelude.Text),
                 superuserParameters :: (Prelude.Maybe SuperuserParametersProperty)}
mkEnvironment :: Value Prelude.Text -> Environment
mkEnvironment name
  = Environment
      {name = name, dataBundles = Prelude.Nothing,
       description = Prelude.Nothing, federationMode = Prelude.Nothing,
       federationParameters = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       superuserParameters = Prelude.Nothing}
instance ToResourceProperties Environment where
  toResourceProperties Environment {..}
    = ResourceProperties
        {awsType = "AWS::FinSpace::Environment",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "DataBundles" Prelude.<$> dataBundles,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "FederationMode" Prelude.<$> federationMode,
                               (JSON..=) "FederationParameters" Prelude.<$> federationParameters,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "SuperuserParameters" Prelude.<$> superuserParameters]))}
instance JSON.ToJSON Environment where
  toJSON Environment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "DataBundles" Prelude.<$> dataBundles,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "FederationMode" Prelude.<$> federationMode,
                  (JSON..=) "FederationParameters" Prelude.<$> federationParameters,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "SuperuserParameters" Prelude.<$> superuserParameters])))
instance Property "DataBundles" Environment where
  type PropertyType "DataBundles" Environment = ValueList Prelude.Text
  set newValue Environment {..}
    = Environment {dataBundles = Prelude.pure newValue, ..}
instance Property "Description" Environment where
  type PropertyType "Description" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {description = Prelude.pure newValue, ..}
instance Property "FederationMode" Environment where
  type PropertyType "FederationMode" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {federationMode = Prelude.pure newValue, ..}
instance Property "FederationParameters" Environment where
  type PropertyType "FederationParameters" Environment = FederationParametersProperty
  set newValue Environment {..}
    = Environment {federationParameters = Prelude.pure newValue, ..}
instance Property "KmsKeyId" Environment where
  type PropertyType "KmsKeyId" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {kmsKeyId = Prelude.pure newValue, ..}
instance Property "Name" Environment where
  type PropertyType "Name" Environment = Value Prelude.Text
  set newValue Environment {..} = Environment {name = newValue, ..}
instance Property "SuperuserParameters" Environment where
  type PropertyType "SuperuserParameters" Environment = SuperuserParametersProperty
  set newValue Environment {..}
    = Environment {superuserParameters = Prelude.pure newValue, ..}