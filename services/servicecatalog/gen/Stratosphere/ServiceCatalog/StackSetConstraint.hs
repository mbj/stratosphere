module Stratosphere.ServiceCatalog.StackSetConstraint (
        StackSetConstraint(..), mkStackSetConstraint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StackSetConstraint
  = StackSetConstraint {acceptLanguage :: (Prelude.Maybe (Value Prelude.Text)),
                        accountList :: (ValueList Prelude.Text),
                        adminRole :: (Value Prelude.Text),
                        description :: (Value Prelude.Text),
                        executionRole :: (Value Prelude.Text),
                        portfolioId :: (Value Prelude.Text),
                        productId :: (Value Prelude.Text),
                        regionList :: (ValueList Prelude.Text),
                        stackInstanceControl :: (Value Prelude.Text)}
mkStackSetConstraint ::
  ValueList Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text
              -> Value Prelude.Text
                 -> ValueList Prelude.Text
                    -> Value Prelude.Text -> StackSetConstraint
mkStackSetConstraint
  accountList
  adminRole
  description
  executionRole
  portfolioId
  productId
  regionList
  stackInstanceControl
  = StackSetConstraint
      {accountList = accountList, adminRole = adminRole,
       description = description, executionRole = executionRole,
       portfolioId = portfolioId, productId = productId,
       regionList = regionList,
       stackInstanceControl = stackInstanceControl,
       acceptLanguage = Prelude.Nothing}
instance ToResourceProperties StackSetConstraint where
  toResourceProperties StackSetConstraint {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::StackSetConstraint",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccountList" JSON..= accountList, "AdminRole" JSON..= adminRole,
                            "Description" JSON..= description,
                            "ExecutionRole" JSON..= executionRole,
                            "PortfolioId" JSON..= portfolioId, "ProductId" JSON..= productId,
                            "RegionList" JSON..= regionList,
                            "StackInstanceControl" JSON..= stackInstanceControl]
                           (Prelude.catMaybes
                              [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage]))}
instance JSON.ToJSON StackSetConstraint where
  toJSON StackSetConstraint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccountList" JSON..= accountList, "AdminRole" JSON..= adminRole,
               "Description" JSON..= description,
               "ExecutionRole" JSON..= executionRole,
               "PortfolioId" JSON..= portfolioId, "ProductId" JSON..= productId,
               "RegionList" JSON..= regionList,
               "StackInstanceControl" JSON..= stackInstanceControl]
              (Prelude.catMaybes
                 [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage])))
instance Property "AcceptLanguage" StackSetConstraint where
  type PropertyType "AcceptLanguage" StackSetConstraint = Value Prelude.Text
  set newValue StackSetConstraint {..}
    = StackSetConstraint {acceptLanguage = Prelude.pure newValue, ..}
instance Property "AccountList" StackSetConstraint where
  type PropertyType "AccountList" StackSetConstraint = ValueList Prelude.Text
  set newValue StackSetConstraint {..}
    = StackSetConstraint {accountList = newValue, ..}
instance Property "AdminRole" StackSetConstraint where
  type PropertyType "AdminRole" StackSetConstraint = Value Prelude.Text
  set newValue StackSetConstraint {..}
    = StackSetConstraint {adminRole = newValue, ..}
instance Property "Description" StackSetConstraint where
  type PropertyType "Description" StackSetConstraint = Value Prelude.Text
  set newValue StackSetConstraint {..}
    = StackSetConstraint {description = newValue, ..}
instance Property "ExecutionRole" StackSetConstraint where
  type PropertyType "ExecutionRole" StackSetConstraint = Value Prelude.Text
  set newValue StackSetConstraint {..}
    = StackSetConstraint {executionRole = newValue, ..}
instance Property "PortfolioId" StackSetConstraint where
  type PropertyType "PortfolioId" StackSetConstraint = Value Prelude.Text
  set newValue StackSetConstraint {..}
    = StackSetConstraint {portfolioId = newValue, ..}
instance Property "ProductId" StackSetConstraint where
  type PropertyType "ProductId" StackSetConstraint = Value Prelude.Text
  set newValue StackSetConstraint {..}
    = StackSetConstraint {productId = newValue, ..}
instance Property "RegionList" StackSetConstraint where
  type PropertyType "RegionList" StackSetConstraint = ValueList Prelude.Text
  set newValue StackSetConstraint {..}
    = StackSetConstraint {regionList = newValue, ..}
instance Property "StackInstanceControl" StackSetConstraint where
  type PropertyType "StackInstanceControl" StackSetConstraint = Value Prelude.Text
  set newValue StackSetConstraint {..}
    = StackSetConstraint {stackInstanceControl = newValue, ..}