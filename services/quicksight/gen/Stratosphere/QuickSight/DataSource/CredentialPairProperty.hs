module Stratosphere.QuickSight.DataSource.CredentialPairProperty (
        module Exports, CredentialPairProperty(..),
        mkCredentialPairProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.DataSourceParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CredentialPairProperty
  = CredentialPairProperty {alternateDataSourceParameters :: (Prelude.Maybe [DataSourceParametersProperty]),
                            password :: (Value Prelude.Text),
                            username :: (Value Prelude.Text)}
mkCredentialPairProperty ::
  Value Prelude.Text -> Value Prelude.Text -> CredentialPairProperty
mkCredentialPairProperty password username
  = CredentialPairProperty
      {password = password, username = username,
       alternateDataSourceParameters = Prelude.Nothing}
instance ToResourceProperties CredentialPairProperty where
  toResourceProperties CredentialPairProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.CredentialPair",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Password" JSON..= password, "Username" JSON..= username]
                           (Prelude.catMaybes
                              [(JSON..=) "AlternateDataSourceParameters"
                                 Prelude.<$> alternateDataSourceParameters]))}
instance JSON.ToJSON CredentialPairProperty where
  toJSON CredentialPairProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Password" JSON..= password, "Username" JSON..= username]
              (Prelude.catMaybes
                 [(JSON..=) "AlternateDataSourceParameters"
                    Prelude.<$> alternateDataSourceParameters])))
instance Property "AlternateDataSourceParameters" CredentialPairProperty where
  type PropertyType "AlternateDataSourceParameters" CredentialPairProperty = [DataSourceParametersProperty]
  set newValue CredentialPairProperty {..}
    = CredentialPairProperty
        {alternateDataSourceParameters = Prelude.pure newValue, ..}
instance Property "Password" CredentialPairProperty where
  type PropertyType "Password" CredentialPairProperty = Value Prelude.Text
  set newValue CredentialPairProperty {..}
    = CredentialPairProperty {password = newValue, ..}
instance Property "Username" CredentialPairProperty where
  type PropertyType "Username" CredentialPairProperty = Value Prelude.Text
  set newValue CredentialPairProperty {..}
    = CredentialPairProperty {username = newValue, ..}