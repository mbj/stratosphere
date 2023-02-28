module Stratosphere.Cognito.UserPoolResourceServer.ResourceServerScopeTypeProperty (
        ResourceServerScopeTypeProperty(..),
        mkResourceServerScopeTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceServerScopeTypeProperty
  = ResourceServerScopeTypeProperty {scopeDescription :: (Value Prelude.Text),
                                     scopeName :: (Value Prelude.Text)}
mkResourceServerScopeTypeProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ResourceServerScopeTypeProperty
mkResourceServerScopeTypeProperty scopeDescription scopeName
  = ResourceServerScopeTypeProperty
      {scopeDescription = scopeDescription, scopeName = scopeName}
instance ToResourceProperties ResourceServerScopeTypeProperty where
  toResourceProperties ResourceServerScopeTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolResourceServer.ResourceServerScopeType",
         supportsTags = Prelude.False,
         properties = ["ScopeDescription" JSON..= scopeDescription,
                       "ScopeName" JSON..= scopeName]}
instance JSON.ToJSON ResourceServerScopeTypeProperty where
  toJSON ResourceServerScopeTypeProperty {..}
    = JSON.object
        ["ScopeDescription" JSON..= scopeDescription,
         "ScopeName" JSON..= scopeName]
instance Property "ScopeDescription" ResourceServerScopeTypeProperty where
  type PropertyType "ScopeDescription" ResourceServerScopeTypeProperty = Value Prelude.Text
  set newValue ResourceServerScopeTypeProperty {..}
    = ResourceServerScopeTypeProperty {scopeDescription = newValue, ..}
instance Property "ScopeName" ResourceServerScopeTypeProperty where
  type PropertyType "ScopeName" ResourceServerScopeTypeProperty = Value Prelude.Text
  set newValue ResourceServerScopeTypeProperty {..}
    = ResourceServerScopeTypeProperty {scopeName = newValue, ..}