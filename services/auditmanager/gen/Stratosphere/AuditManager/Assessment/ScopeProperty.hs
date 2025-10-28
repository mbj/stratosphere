module Stratosphere.AuditManager.Assessment.ScopeProperty (
        module Exports, ScopeProperty(..), mkScopeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AuditManager.Assessment.AWSAccountProperty as Exports
import {-# SOURCE #-} Stratosphere.AuditManager.Assessment.AWSServiceProperty as Exports
import Stratosphere.ResourceProperties
data ScopeProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-scope.html>
    ScopeProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-scope.html#cfn-auditmanager-assessment-scope-awsaccounts>
                   awsAccounts :: (Prelude.Maybe [AWSAccountProperty]),
                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-scope.html#cfn-auditmanager-assessment-scope-awsservices>
                   awsServices :: (Prelude.Maybe [AWSServiceProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScopeProperty :: ScopeProperty
mkScopeProperty
  = ScopeProperty
      {awsAccounts = Prelude.Nothing, awsServices = Prelude.Nothing}
instance ToResourceProperties ScopeProperty where
  toResourceProperties ScopeProperty {..}
    = ResourceProperties
        {awsType = "AWS::AuditManager::Assessment.Scope",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AwsAccounts" Prelude.<$> awsAccounts,
                            (JSON..=) "AwsServices" Prelude.<$> awsServices])}
instance JSON.ToJSON ScopeProperty where
  toJSON ScopeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AwsAccounts" Prelude.<$> awsAccounts,
               (JSON..=) "AwsServices" Prelude.<$> awsServices]))
instance Property "AwsAccounts" ScopeProperty where
  type PropertyType "AwsAccounts" ScopeProperty = [AWSAccountProperty]
  set newValue ScopeProperty {..}
    = ScopeProperty {awsAccounts = Prelude.pure newValue, ..}
instance Property "AwsServices" ScopeProperty where
  type PropertyType "AwsServices" ScopeProperty = [AWSServiceProperty]
  set newValue ScopeProperty {..}
    = ScopeProperty {awsServices = Prelude.pure newValue, ..}